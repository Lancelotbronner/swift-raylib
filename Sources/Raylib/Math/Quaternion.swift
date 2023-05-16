//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

/*
//----------------------------------------------------------------------------------
// Module Functions Definition - Quaternion math
//----------------------------------------------------------------------------------

// Add two quaternions
RMAPI Quaternion QuaternionAdd(Quaternion q1, Quaternion q2)
{
	Quaternion result = {q1.x + q2.x, q1.y + q2.y, q1.z + q2.z, q1.w + q2.w};
	
	return result;
}

// Add quaternion and float value
RMAPI Quaternion QuaternionAddValue(Quaternion q, float add)
{
	Quaternion result = {q.x + add, q.y + add, q.z + add, q.w + add};
	
	return result;
}

// Subtract two quaternions
RMAPI Quaternion QuaternionSubtract(Quaternion q1, Quaternion q2)
{
	Quaternion result = {q1.x - q2.x, q1.y - q2.y, q1.z - q2.z, q1.w - q2.w};
	
	return result;
}

// Subtract quaternion and float value
RMAPI Quaternion QuaternionSubtractValue(Quaternion q, float sub)
{
	Quaternion result = {q.x - sub, q.y - sub, q.z - sub, q.w - sub};
	
	return result;
}

// Get identity quaternion
RMAPI Quaternion QuaternionIdentity(void)
{
	Quaternion result = { 0.0f, 0.0f, 0.0f, 1.0f };
	
	return result;
}

// Computes the length of a quaternion
RMAPI float QuaternionLength(Quaternion q)
{
	float result = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
	
	return result;
}

// Normalize provided quaternion
RMAPI Quaternion QuaternionNormalize(Quaternion q)
{
	Quaternion result = { 0 };
	
	float length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
	if (length == 0.0f) length = 1.0f;
	float ilength = 1.0f/length;
	
	result.x = q.x*ilength;
	result.y = q.y*ilength;
	result.z = q.z*ilength;
	result.w = q.w*ilength;
	
	return result;
}

// Invert provided quaternion
RMAPI Quaternion QuaternionInvert(Quaternion q)
{
	Quaternion result = q;
	
	float length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
	float lengthSq = length*length;
	
	if (lengthSq != 0.0)
	{
		float invLength = 1.0f/lengthSq;
		
		result.x *= -invLength;
		result.y *= -invLength;
		result.z *= -invLength;
		result.w *= invLength;
	}
	
	return result;
}

// Calculate two quaternion multiplication
RMAPI Quaternion QuaternionMultiply(Quaternion q1, Quaternion q2)
{
	Quaternion result = { 0 };
	
	float qax = q1.x, qay = q1.y, qaz = q1.z, qaw = q1.w;
	float qbx = q2.x, qby = q2.y, qbz = q2.z, qbw = q2.w;
	
	result.x = qax*qbw + qaw*qbx + qay*qbz - qaz*qby;
	result.y = qay*qbw + qaw*qby + qaz*qbx - qax*qbz;
	result.z = qaz*qbw + qaw*qbz + qax*qby - qay*qbx;
	result.w = qaw*qbw - qax*qbx - qay*qby - qaz*qbz;
	
	return result;
}

// Scale quaternion by float value
RMAPI Quaternion QuaternionScale(Quaternion q, float mul)
{
	Quaternion result = { 0 };
	
	float qax = q.x, qay = q.y, qaz = q.z, qaw = q.w;
	
	result.x = qax*mul + qaw*mul + qay*mul - qaz*mul;
	result.y = qay*mul + qaw*mul + qaz*mul - qax*mul;
	result.z = qaz*mul + qaw*mul + qax*mul - qay*mul;
	result.w = qaw*mul - qax*mul - qay*mul - qaz*mul;
	
	return result;
}

// Divide two quaternions
RMAPI Quaternion QuaternionDivide(Quaternion q1, Quaternion q2)
{
	Quaternion result = { q1.x/q2.x, q1.y/q2.y, q1.z/q2.z, q1.w/q2.w };
	
	return result;
}

// Calculate linear interpolation between two quaternions
RMAPI Quaternion QuaternionLerp(Quaternion q1, Quaternion q2, float amount)
{
	Quaternion result = { 0 };
	
	result.x = q1.x + amount*(q2.x - q1.x);
	result.y = q1.y + amount*(q2.y - q1.y);
	result.z = q1.z + amount*(q2.z - q1.z);
	result.w = q1.w + amount*(q2.w - q1.w);
	
	return result;
}

// Calculate slerp-optimized interpolation between two quaternions
RMAPI Quaternion QuaternionNlerp(Quaternion q1, Quaternion q2, float amount)
{
	Quaternion result = { 0 };
	
	// QuaternionLerp(q1, q2, amount)
	result.x = q1.x + amount*(q2.x - q1.x);
	result.y = q1.y + amount*(q2.y - q1.y);
	result.z = q1.z + amount*(q2.z - q1.z);
	result.w = q1.w + amount*(q2.w - q1.w);
	
	// QuaternionNormalize(q);
	Quaternion q = result;
	float length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
	if (length == 0.0f) length = 1.0f;
	float ilength = 1.0f/length;
	
	result.x = q.x*ilength;
	result.y = q.y*ilength;
	result.z = q.z*ilength;
	result.w = q.w*ilength;
	
	return result;
}

// Calculates spherical linear interpolation between two quaternions
RMAPI Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float amount)
{
	Quaternion result = { 0 };
	
	float cosHalfTheta = q1.x*q2.x + q1.y*q2.y + q1.z*q2.z + q1.w*q2.w;
	
	if (cosHalfTheta < 0)
	{
		q2.x = -q2.x; q2.y = -q2.y; q2.z = -q2.z; q2.w = -q2.w;
		cosHalfTheta = -cosHalfTheta;
	}
	
	if (fabs(cosHalfTheta) >= 1.0f) result = q1;
	else if (cosHalfTheta > 0.95f) result = QuaternionNlerp(q1, q2, amount);
	else
	{
		float halfTheta = acosf(cosHalfTheta);
		float sinHalfTheta = sqrtf(1.0f - cosHalfTheta*cosHalfTheta);
		
		if (fabs(sinHalfTheta) < 0.001f)
		{
			result.x = (q1.x*0.5f + q2.x*0.5f);
			result.y = (q1.y*0.5f + q2.y*0.5f);
			result.z = (q1.z*0.5f + q2.z*0.5f);
			result.w = (q1.w*0.5f + q2.w*0.5f);
		}
		else
		{
			float ratioA = sinf((1 - amount)*halfTheta)/sinHalfTheta;
			float ratioB = sinf(amount*halfTheta)/sinHalfTheta;
			
			result.x = (q1.x*ratioA + q2.x*ratioB);
			result.y = (q1.y*ratioA + q2.y*ratioB);
			result.z = (q1.z*ratioA + q2.z*ratioB);
			result.w = (q1.w*ratioA + q2.w*ratioB);
		}
	}
	
	return result;
}

// Calculate quaternion based on the rotation from one vector to another
RMAPI Quaternion QuaternionFromVector3ToVector3(Vector3 from, Vector3 to)
{
	Quaternion result = { 0 };
	
	float cos2Theta = (from.x*to.x + from.y*to.y + from.z*to.z);    // Vector3DotProduct(from, to)
	Vector3 cross = { from.y*to.z - from.z*to.y, from.z*to.x - from.x*to.z, from.x*to.y - from.y*to.x }; // Vector3CrossProduct(from, to)
	
	result.x = cross.x;
	result.y = cross.y;
	result.z = cross.z;
	result.w = 1.0f + cos2Theta;
	
	// QuaternionNormalize(q);
	// NOTE: Normalize to essentially nlerp the original and identity to 0.5
	Quaternion q = result;
	float length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
	if (length == 0.0f) length = 1.0f;
	float ilength = 1.0f/length;
	
	result.x = q.x*ilength;
	result.y = q.y*ilength;
	result.z = q.z*ilength;
	result.w = q.w*ilength;
	
	return result;
}

// Get a quaternion for a given rotation matrix
RMAPI Quaternion QuaternionFromMatrix(Matrix mat)
{
	Quaternion result = { 0 };
	
	if ((mat.m0 > mat.m5) && (mat.m0 > mat.m10))
	{
		float s = sqrtf(1.0f + mat.m0 - mat.m5 - mat.m10)*2;
		
		result.x = 0.25f*s;
		result.y = (mat.m4 + mat.m1)/s;
		result.z = (mat.m2 + mat.m8)/s;
		result.w = (mat.m9 - mat.m6)/s;
	}
	else if (mat.m5 > mat.m10)
	{
		float s = sqrtf(1.0f + mat.m5 - mat.m0 - mat.m10)*2;
		result.x = (mat.m4 + mat.m1)/s;
		result.y = 0.25f*s;
		result.z = (mat.m9 + mat.m6)/s;
		result.w = (mat.m2 - mat.m8)/s;
	}
	else
	{
		float s = sqrtf(1.0f + mat.m10 - mat.m0 - mat.m5)*2;
		result.x = (mat.m2 + mat.m8)/s;
		result.y = (mat.m9 + mat.m6)/s;
		result.z = 0.25f*s;
		result.w = (mat.m4 - mat.m1)/s;
	}
	
	return result;
}

// Get a matrix for a given quaternion
RMAPI Matrix QuaternionToMatrix(Quaternion q)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f }; // MatrixIdentity()
	
	float a2 = q.x*q.x;
	float b2 = q.y*q.y;
	float c2 = q.z*q.z;
	float ac = q.x*q.z;
	float ab = q.x*q.y;
	float bc = q.y*q.z;
	float ad = q.w*q.x;
	float bd = q.w*q.y;
	float cd = q.w*q.z;
	
	result.m0 = 1 - 2*(b2 + c2);
	result.m1 = 2*(ab + cd);
	result.m2 = 2*(ac - bd);
	
	result.m4 = 2*(ab - cd);
	result.m5 = 1 - 2*(a2 + c2);
	result.m6 = 2*(bc + ad);
	
	result.m8 = 2*(ac + bd);
	result.m9 = 2*(bc - ad);
	result.m10 = 1 - 2*(a2 + b2);
	
	return result;
}

// Get rotation quaternion for an angle and axis
// NOTE: angle must be provided in radians
RMAPI Quaternion QuaternionFromAxisAngle(Vector3 axis, float angle)
{
	Quaternion result = { 0.0f, 0.0f, 0.0f, 1.0f };
	
	float axisLength = sqrtf(axis.x*axis.x + axis.y*axis.y + axis.z*axis.z);
	
	if (axisLength != 0.0f)
	{
		angle *= 0.5f;
		
		float length = 0.0f;
		float ilength = 0.0f;
		
		// Vector3Normalize(axis)
		Vector3 v = axis;
		length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
		if (length == 0.0f) length = 1.0f;
		ilength = 1.0f/length;
		axis.x *= ilength;
		axis.y *= ilength;
		axis.z *= ilength;
		
		float sinres = sinf(angle);
		float cosres = cosf(angle);
		
		result.x = axis.x*sinres;
		result.y = axis.y*sinres;
		result.z = axis.z*sinres;
		result.w = cosres;
		
		// QuaternionNormalize(q);
		Quaternion q = result;
		length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
		if (length == 0.0f) length = 1.0f;
		ilength = 1.0f/length;
		result.x = q.x*ilength;
		result.y = q.y*ilength;
		result.z = q.z*ilength;
		result.w = q.w*ilength;
	}
	
	return result;
}

// Get the rotation angle and axis for a given quaternion
RMAPI void QuaternionToAxisAngle(Quaternion q, Vector3 *outAxis, float *outAngle)
{
	if (fabs(q.w) > 1.0f)
	{
		// QuaternionNormalize(q);
		float length = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
		if (length == 0.0f) length = 1.0f;
		float ilength = 1.0f/length;
		
		q.x = q.x*ilength;
		q.y = q.y*ilength;
		q.z = q.z*ilength;
		q.w = q.w*ilength;
	}
	
	Vector3 resAxis = { 0.0f, 0.0f, 0.0f };
	float resAngle = 2.0f*acosf(q.w);
	float den = sqrtf(1.0f - q.w*q.w);
	
	if (den > 0.0001f)
	{
		resAxis.x = q.x/den;
		resAxis.y = q.y/den;
		resAxis.z = q.z/den;
	}
	else
	{
		// This occurs when the angle is zero.
		// Not a problem: just set an arbitrary normalized axis.
		resAxis.x = 1.0f;
	}
	
	*outAxis = resAxis;
	*outAngle = resAngle;
}

// Get the quaternion equivalent to Euler angles
// NOTE: Rotation order is ZYX
RMAPI Quaternion QuaternionFromEuler(float pitch, float yaw, float roll)
{
	Quaternion result = { 0 };
	
	float x0 = cosf(pitch*0.5f);
	float x1 = sinf(pitch*0.5f);
	float y0 = cosf(yaw*0.5f);
	float y1 = sinf(yaw*0.5f);
	float z0 = cosf(roll*0.5f);
	float z1 = sinf(roll*0.5f);
	
	result.x = x1*y0*z0 - x0*y1*z1;
	result.y = x0*y1*z0 + x1*y0*z1;
	result.z = x0*y0*z1 - x1*y1*z0;
	result.w = x0*y0*z0 + x1*y1*z1;
	
	return result;
}

// Get the Euler angles equivalent to quaternion (roll, pitch, yaw)
// NOTE: Angles are returned in a Vector3 struct in radians
RMAPI Vector3 QuaternionToEuler(Quaternion q)
{
	Vector3 result = { 0 };
	
	// Roll (x-axis rotation)
	float x0 = 2.0f*(q.w*q.x + q.y*q.z);
	float x1 = 1.0f - 2.0f*(q.x*q.x + q.y*q.y);
	result.x = atan2f(x0, x1);
	
	// Pitch (y-axis rotation)
	float y0 = 2.0f*(q.w*q.y - q.z*q.x);
	y0 = y0 > 1.0f ? 1.0f : y0;
	y0 = y0 < -1.0f ? -1.0f : y0;
	result.y = asinf(y0);
	
	// Yaw (z-axis rotation)
	float z0 = 2.0f*(q.w*q.z + q.x*q.y);
	float z1 = 1.0f - 2.0f*(q.y*q.y + q.z*q.z);
	result.z = atan2f(z0, z1);
	
	return result;
}

// Transform a quaternion given a transformation matrix
RMAPI Quaternion QuaternionTransform(Quaternion q, Matrix mat)
{
	Quaternion result = { 0 };
	
	result.x = mat.m0*q.x + mat.m4*q.y + mat.m8*q.z + mat.m12*q.w;
	result.y = mat.m1*q.x + mat.m5*q.y + mat.m9*q.z + mat.m13*q.w;
	result.z = mat.m2*q.x + mat.m6*q.y + mat.m10*q.z + mat.m14*q.w;
	result.w = mat.m3*q.x + mat.m7*q.y + mat.m11*q.z + mat.m15*q.w;
	
	return result;
}
*/
