//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Float Matrix 4x4

public typealias Matrix4x4f = Matrix

extension Matrix4x4f {
	
	
	
}


/*
//----------------------------------------------------------------------------------
// Module Functions Definition - Matrix math
//----------------------------------------------------------------------------------

// Compute matrix determinant
RMAPI float MatrixDeterminant(Matrix mat)
{
	float result = 0.0f;
	
	// Cache the matrix values (speed optimization)
	float a00 = mat.m0, a01 = mat.m1, a02 = mat.m2, a03 = mat.m3;
	float a10 = mat.m4, a11 = mat.m5, a12 = mat.m6, a13 = mat.m7;
	float a20 = mat.m8, a21 = mat.m9, a22 = mat.m10, a23 = mat.m11;
	float a30 = mat.m12, a31 = mat.m13, a32 = mat.m14, a33 = mat.m15;
	
	result = a30*a21*a12*a03 - a20*a31*a12*a03 - a30*a11*a22*a03 + a10*a31*a22*a03 +
	a20*a11*a32*a03 - a10*a21*a32*a03 - a30*a21*a02*a13 + a20*a31*a02*a13 +
	a30*a01*a22*a13 - a00*a31*a22*a13 - a20*a01*a32*a13 + a00*a21*a32*a13 +
	a30*a11*a02*a23 - a10*a31*a02*a23 - a30*a01*a12*a23 + a00*a31*a12*a23 +
	a10*a01*a32*a23 - a00*a11*a32*a23 - a20*a11*a02*a33 + a10*a21*a02*a33 +
	a20*a01*a12*a33 - a00*a21*a12*a33 - a10*a01*a22*a33 + a00*a11*a22*a33;
	
	return result;
}

// Get the trace of the matrix (sum of the values along the diagonal)
RMAPI float MatrixTrace(Matrix mat)
{
	float result = (mat.m0 + mat.m5 + mat.m10 + mat.m15);
	
	return result;
}

// Transposes provided matrix
RMAPI Matrix MatrixTranspose(Matrix mat)
{
	Matrix result = { 0 };
	
	result.m0 = mat.m0;
	result.m1 = mat.m4;
	result.m2 = mat.m8;
	result.m3 = mat.m12;
	result.m4 = mat.m1;
	result.m5 = mat.m5;
	result.m6 = mat.m9;
	result.m7 = mat.m13;
	result.m8 = mat.m2;
	result.m9 = mat.m6;
	result.m10 = mat.m10;
	result.m11 = mat.m14;
	result.m12 = mat.m3;
	result.m13 = mat.m7;
	result.m14 = mat.m11;
	result.m15 = mat.m15;
	
	return result;
}

// Invert provided matrix
RMAPI Matrix MatrixInvert(Matrix mat)
{
	Matrix result = { 0 };
	
	// Cache the matrix values (speed optimization)
	float a00 = mat.m0, a01 = mat.m1, a02 = mat.m2, a03 = mat.m3;
	float a10 = mat.m4, a11 = mat.m5, a12 = mat.m6, a13 = mat.m7;
	float a20 = mat.m8, a21 = mat.m9, a22 = mat.m10, a23 = mat.m11;
	float a30 = mat.m12, a31 = mat.m13, a32 = mat.m14, a33 = mat.m15;
	
	float b00 = a00*a11 - a01*a10;
	float b01 = a00*a12 - a02*a10;
	float b02 = a00*a13 - a03*a10;
	float b03 = a01*a12 - a02*a11;
	float b04 = a01*a13 - a03*a11;
	float b05 = a02*a13 - a03*a12;
	float b06 = a20*a31 - a21*a30;
	float b07 = a20*a32 - a22*a30;
	float b08 = a20*a33 - a23*a30;
	float b09 = a21*a32 - a22*a31;
	float b10 = a21*a33 - a23*a31;
	float b11 = a22*a33 - a23*a32;
	
	// Calculate the invert determinant (inlined to avoid double-caching)
	float invDet = 1.0f/(b00*b11 - b01*b10 + b02*b09 + b03*b08 - b04*b07 + b05*b06);
	
	result.m0 = (a11*b11 - a12*b10 + a13*b09)*invDet;
	result.m1 = (-a01*b11 + a02*b10 - a03*b09)*invDet;
	result.m2 = (a31*b05 - a32*b04 + a33*b03)*invDet;
	result.m3 = (-a21*b05 + a22*b04 - a23*b03)*invDet;
	result.m4 = (-a10*b11 + a12*b08 - a13*b07)*invDet;
	result.m5 = (a00*b11 - a02*b08 + a03*b07)*invDet;
	result.m6 = (-a30*b05 + a32*b02 - a33*b01)*invDet;
	result.m7 = (a20*b05 - a22*b02 + a23*b01)*invDet;
	result.m8 = (a10*b10 - a11*b08 + a13*b06)*invDet;
	result.m9 = (-a00*b10 + a01*b08 - a03*b06)*invDet;
	result.m10 = (a30*b04 - a31*b02 + a33*b00)*invDet;
	result.m11 = (-a20*b04 + a21*b02 - a23*b00)*invDet;
	result.m12 = (-a10*b09 + a11*b07 - a12*b06)*invDet;
	result.m13 = (a00*b09 - a01*b07 + a02*b06)*invDet;
	result.m14 = (-a30*b03 + a31*b01 - a32*b00)*invDet;
	result.m15 = (a20*b03 - a21*b01 + a22*b00)*invDet;
	
	return result;
}

// Normalize provided matrix
RMAPI Matrix MatrixNormalize(Matrix mat)
{
	Matrix result = { 0 };
	
	// Cache the matrix values (speed optimization)
	float a00 = mat.m0, a01 = mat.m1, a02 = mat.m2, a03 = mat.m3;
	float a10 = mat.m4, a11 = mat.m5, a12 = mat.m6, a13 = mat.m7;
	float a20 = mat.m8, a21 = mat.m9, a22 = mat.m10, a23 = mat.m11;
	float a30 = mat.m12, a31 = mat.m13, a32 = mat.m14, a33 = mat.m15;
	
	// MatrixDeterminant(mat)
	float det = a30*a21*a12*a03 - a20*a31*a12*a03 - a30*a11*a22*a03 + a10*a31*a22*a03 +
	a20*a11*a32*a03 - a10*a21*a32*a03 - a30*a21*a02*a13 + a20*a31*a02*a13 +
	a30*a01*a22*a13 - a00*a31*a22*a13 - a20*a01*a32*a13 + a00*a21*a32*a13 +
	a30*a11*a02*a23 - a10*a31*a02*a23 - a30*a01*a12*a23 + a00*a31*a12*a23 +
	a10*a01*a32*a23 - a00*a11*a32*a23 - a20*a11*a02*a33 + a10*a21*a02*a33 +
	a20*a01*a12*a33 - a00*a21*a12*a33 - a10*a01*a22*a33 + a00*a11*a22*a33;
	
	result.m0 = mat.m0/det;
	result.m1 = mat.m1/det;
	result.m2 = mat.m2/det;
	result.m3 = mat.m3/det;
	result.m4 = mat.m4/det;
	result.m5 = mat.m5/det;
	result.m6 = mat.m6/det;
	result.m7 = mat.m7/det;
	result.m8 = mat.m8/det;
	result.m9 = mat.m9/det;
	result.m10 = mat.m10/det;
	result.m11 = mat.m11/det;
	result.m12 = mat.m12/det;
	result.m13 = mat.m13/det;
	result.m14 = mat.m14/det;
	result.m15 = mat.m15/det;
	
	return result;
}

// Get identity matrix
RMAPI Matrix MatrixIdentity(void)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f };
	
	return result;
}

// Add two matrices
RMAPI Matrix MatrixAdd(Matrix left, Matrix right)
{
	Matrix result = { 0 };
	
	result.m0 = left.m0 + right.m0;
	result.m1 = left.m1 + right.m1;
	result.m2 = left.m2 + right.m2;
	result.m3 = left.m3 + right.m3;
	result.m4 = left.m4 + right.m4;
	result.m5 = left.m5 + right.m5;
	result.m6 = left.m6 + right.m6;
	result.m7 = left.m7 + right.m7;
	result.m8 = left.m8 + right.m8;
	result.m9 = left.m9 + right.m9;
	result.m10 = left.m10 + right.m10;
	result.m11 = left.m11 + right.m11;
	result.m12 = left.m12 + right.m12;
	result.m13 = left.m13 + right.m13;
	result.m14 = left.m14 + right.m14;
	result.m15 = left.m15 + right.m15;
	
	return result;
}

// Subtract two matrices (left - right)
RMAPI Matrix MatrixSubtract(Matrix left, Matrix right)
{
	Matrix result = { 0 };
	
	result.m0 = left.m0 - right.m0;
	result.m1 = left.m1 - right.m1;
	result.m2 = left.m2 - right.m2;
	result.m3 = left.m3 - right.m3;
	result.m4 = left.m4 - right.m4;
	result.m5 = left.m5 - right.m5;
	result.m6 = left.m6 - right.m6;
	result.m7 = left.m7 - right.m7;
	result.m8 = left.m8 - right.m8;
	result.m9 = left.m9 - right.m9;
	result.m10 = left.m10 - right.m10;
	result.m11 = left.m11 - right.m11;
	result.m12 = left.m12 - right.m12;
	result.m13 = left.m13 - right.m13;
	result.m14 = left.m14 - right.m14;
	result.m15 = left.m15 - right.m15;
	
	return result;
}

// Get two matrix multiplication
// NOTE: When multiplying matrices... the order matters!
RMAPI Matrix MatrixMultiply(Matrix left, Matrix right)
{
	Matrix result = { 0 };
	
	result.m0 = left.m0*right.m0 + left.m1*right.m4 + left.m2*right.m8 + left.m3*right.m12;
	result.m1 = left.m0*right.m1 + left.m1*right.m5 + left.m2*right.m9 + left.m3*right.m13;
	result.m2 = left.m0*right.m2 + left.m1*right.m6 + left.m2*right.m10 + left.m3*right.m14;
	result.m3 = left.m0*right.m3 + left.m1*right.m7 + left.m2*right.m11 + left.m3*right.m15;
	result.m4 = left.m4*right.m0 + left.m5*right.m4 + left.m6*right.m8 + left.m7*right.m12;
	result.m5 = left.m4*right.m1 + left.m5*right.m5 + left.m6*right.m9 + left.m7*right.m13;
	result.m6 = left.m4*right.m2 + left.m5*right.m6 + left.m6*right.m10 + left.m7*right.m14;
	result.m7 = left.m4*right.m3 + left.m5*right.m7 + left.m6*right.m11 + left.m7*right.m15;
	result.m8 = left.m8*right.m0 + left.m9*right.m4 + left.m10*right.m8 + left.m11*right.m12;
	result.m9 = left.m8*right.m1 + left.m9*right.m5 + left.m10*right.m9 + left.m11*right.m13;
	result.m10 = left.m8*right.m2 + left.m9*right.m6 + left.m10*right.m10 + left.m11*right.m14;
	result.m11 = left.m8*right.m3 + left.m9*right.m7 + left.m10*right.m11 + left.m11*right.m15;
	result.m12 = left.m12*right.m0 + left.m13*right.m4 + left.m14*right.m8 + left.m15*right.m12;
	result.m13 = left.m12*right.m1 + left.m13*right.m5 + left.m14*right.m9 + left.m15*right.m13;
	result.m14 = left.m12*right.m2 + left.m13*right.m6 + left.m14*right.m10 + left.m15*right.m14;
	result.m15 = left.m12*right.m3 + left.m13*right.m7 + left.m14*right.m11 + left.m15*right.m15;
	
	return result;
}

// Get translation matrix
RMAPI Matrix MatrixTranslate(float x, float y, float z)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, x,
		0.0f, 1.0f, 0.0f, y,
		0.0f, 0.0f, 1.0f, z,
		0.0f, 0.0f, 0.0f, 1.0f };
	
	return result;
}

// Create rotation matrix from axis and angle
// NOTE: Angle should be provided in radians
RMAPI Matrix MatrixRotate(Vector3 axis, float angle)
{
	Matrix result = { 0 };
	
	float x = axis.x, y = axis.y, z = axis.z;
	
	float lengthSquared = x*x + y*y + z*z;
	
	if ((lengthSquared != 1.0f) && (lengthSquared != 0.0f))
	{
		float ilength = 1.0f/sqrtf(lengthSquared);
		x *= ilength;
		y *= ilength;
		z *= ilength;
	}
	
	float sinres = sinf(angle);
	float cosres = cosf(angle);
	float t = 1.0f - cosres;
	
	result.m0 = x*x*t + cosres;
	result.m1 = y*x*t + z*sinres;
	result.m2 = z*x*t - y*sinres;
	result.m3 = 0.0f;
	
	result.m4 = x*y*t - z*sinres;
	result.m5 = y*y*t + cosres;
	result.m6 = z*y*t + x*sinres;
	result.m7 = 0.0f;
	
	result.m8 = x*z*t + y*sinres;
	result.m9 = y*z*t - x*sinres;
	result.m10 = z*z*t + cosres;
	result.m11 = 0.0f;
	
	result.m12 = 0.0f;
	result.m13 = 0.0f;
	result.m14 = 0.0f;
	result.m15 = 1.0f;
	
	return result;
}

// Get x-rotation matrix (angle in radians)
RMAPI Matrix MatrixRotateX(float angle)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f }; // MatrixIdentity()
	
	float cosres = cosf(angle);
	float sinres = sinf(angle);
	
	result.m5 = cosres;
	result.m6 = -sinres;
	result.m9 = sinres;
	result.m10 = cosres;
	
	return result;
}

// Get y-rotation matrix (angle in radians)
RMAPI Matrix MatrixRotateY(float angle)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f }; // MatrixIdentity()
	
	float cosres = cosf(angle);
	float sinres = sinf(angle);
	
	result.m0 = cosres;
	result.m2 = sinres;
	result.m8 = -sinres;
	result.m10 = cosres;
	
	return result;
}

// Get z-rotation matrix (angle in radians)
RMAPI Matrix MatrixRotateZ(float angle)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f }; // MatrixIdentity()
	
	float cosres = cosf(angle);
	float sinres = sinf(angle);
	
	result.m0 = cosres;
	result.m1 = -sinres;
	result.m4 = sinres;
	result.m5 = cosres;
	
	return result;
}


// Get xyz-rotation matrix (angles in radians)
RMAPI Matrix MatrixRotateXYZ(Vector3 ang)
{
	Matrix result = { 1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f }; // MatrixIdentity()
	
	float cosz = cosf(-ang.z);
	float sinz = sinf(-ang.z);
	float cosy = cosf(-ang.y);
	float siny = sinf(-ang.y);
	float cosx = cosf(-ang.x);
	float sinx = sinf(-ang.x);
	
	result.m0 = cosz*cosy;
	result.m4 = (cosz*siny*sinx) - (sinz*cosx);
	result.m8 = (cosz*siny*cosx) + (sinz*sinx);
	
	result.m1 = sinz*cosy;
	result.m5 = (sinz*siny*sinx) + (cosz*cosx);
	result.m9 = (sinz*siny*cosx) - (cosz*sinx);
	
	result.m2 = -siny;
	result.m6 = cosy*sinx;
	result.m10= cosy*cosx;
	
	return result;
}

// Get zyx-rotation matrix (angles in radians)
RMAPI Matrix MatrixRotateZYX(Vector3 ang)
{
	Matrix result = { 0 };
	
	float cz = cosf(ang.z);
	float sz = sinf(ang.z);
	float cy = cosf(ang.y);
	float sy = sinf(ang.y);
	float cx = cosf(ang.x);
	float sx = sinf(ang.x);
	
	result.m0 = cz*cy;
	result.m1 = cz*sy*sx - cx*sz;
	result.m2 = sz*sx + cz*cx*sy;
	result.m3 = 0;
	
	result.m4 = cy*sz;
	result.m5 = cz*cx + sz*sy*sx;
	result.m6 = cx*sz*sy - cz*sx;
	result.m7 = 0;
	
	result.m8 = -sy;
	result.m9 = cy*sx;
	result.m10 = cy*cx;
	result.m11 = 0;
	
	result.m12 = 0;
	result.m13 = 0;
	result.m14 = 0;
	result.m15 = 1;
	
	return result;
}

// Get scaling matrix
RMAPI Matrix MatrixScale(float x, float y, float z)
{
	Matrix result = { x, 0.0f, 0.0f, 0.0f,
		0.0f, y, 0.0f, 0.0f,
		0.0f, 0.0f, z, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f };
	
	return result;
}

// Get perspective projection matrix
RMAPI Matrix MatrixFrustum(double left, double right, double bottom, double top, double near, double far)
{
	Matrix result = { 0 };
	
	float rl = (float)(right - left);
	float tb = (float)(top - bottom);
	float fn = (float)(far - near);
	
	result.m0 = ((float)near*2.0f)/rl;
	result.m1 = 0.0f;
	result.m2 = 0.0f;
	result.m3 = 0.0f;
	
	result.m4 = 0.0f;
	result.m5 = ((float)near*2.0f)/tb;
	result.m6 = 0.0f;
	result.m7 = 0.0f;
	
	result.m8 = ((float)right + (float)left)/rl;
	result.m9 = ((float)top + (float)bottom)/tb;
	result.m10 = -((float)far + (float)near)/fn;
	result.m11 = -1.0f;
	
	result.m12 = 0.0f;
	result.m13 = 0.0f;
	result.m14 = -((float)far*(float)near*2.0f)/fn;
	result.m15 = 0.0f;
	
	return result;
}

// Get perspective projection matrix
// NOTE: Angle should be provided in radians
RMAPI Matrix MatrixPerspective(double fovy, double aspect, double near, double far)
{
	Matrix result = { 0 };
	
	double top = near*tan(fovy*0.5);
	double bottom = -top;
	double right = top*aspect;
	double left = -right;
	
	// MatrixFrustum(-right, right, -top, top, near, far);
	float rl = (float)(right - left);
	float tb = (float)(top - bottom);
	float fn = (float)(far - near);
	
	result.m0 = ((float)near*2.0f)/rl;
	result.m5 = ((float)near*2.0f)/tb;
	result.m8 = ((float)right + (float)left)/rl;
	result.m9 = ((float)top + (float)bottom)/tb;
	result.m10 = -((float)far + (float)near)/fn;
	result.m11 = -1.0f;
	result.m14 = -((float)far*(float)near*2.0f)/fn;
	
	return result;
}

// Get orthographic projection matrix
RMAPI Matrix MatrixOrtho(double left, double right, double bottom, double top, double near, double far)
{
	Matrix result = { 0 };
	
	float rl = (float)(right - left);
	float tb = (float)(top - bottom);
	float fn = (float)(far - near);
	
	result.m0 = 2.0f/rl;
	result.m1 = 0.0f;
	result.m2 = 0.0f;
	result.m3 = 0.0f;
	result.m4 = 0.0f;
	result.m5 = 2.0f/tb;
	result.m6 = 0.0f;
	result.m7 = 0.0f;
	result.m8 = 0.0f;
	result.m9 = 0.0f;
	result.m10 = -2.0f/fn;
	result.m11 = 0.0f;
	result.m12 = -((float)left + (float)right)/rl;
	result.m13 = -((float)top + (float)bottom)/tb;
	result.m14 = -((float)far + (float)near)/fn;
	result.m15 = 1.0f;
	
	return result;
}

// Get camera look-at matrix (view matrix)
RMAPI Matrix MatrixLookAt(Vector3 eye, Vector3 target, Vector3 up)
{
	Matrix result = { 0 };
	
	float length = 0.0f;
	float ilength = 0.0f;
	
	// Vector3Subtract(eye, target)
	Vector3 vz = { eye.x - target.x, eye.y - target.y, eye.z - target.z };
	
	// Vector3Normalize(vz)
	Vector3 v = vz;
	length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	if (length == 0.0f) length = 1.0f;
	ilength = 1.0f/length;
	vz.x *= ilength;
	vz.y *= ilength;
	vz.z *= ilength;
	
	// Vector3CrossProduct(up, vz)
	Vector3 vx = { up.y*vz.z - up.z*vz.y, up.z*vz.x - up.x*vz.z, up.x*vz.y - up.y*vz.x };
	
	// Vector3Normalize(x)
	v = vx;
	length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	if (length == 0.0f) length = 1.0f;
	ilength = 1.0f/length;
	vx.x *= ilength;
	vx.y *= ilength;
	vx.z *= ilength;
	
	// Vector3CrossProduct(vz, vx)
	Vector3 vy = { vz.y*vx.z - vz.z*vx.y, vz.z*vx.x - vz.x*vx.z, vz.x*vx.y - vz.y*vx.x };
	
	result.m0 = vx.x;
	result.m1 = vy.x;
	result.m2 = vz.x;
	result.m3 = 0.0f;
	result.m4 = vx.y;
	result.m5 = vy.y;
	result.m6 = vz.y;
	result.m7 = 0.0f;
	result.m8 = vx.z;
	result.m9 = vy.z;
	result.m10 = vz.z;
	result.m11 = 0.0f;
	result.m12 = -(vx.x*eye.x + vx.y*eye.y + vx.z*eye.z);   // Vector3DotProduct(vx, eye)
	result.m13 = -(vy.x*eye.x + vy.y*eye.y + vy.z*eye.z);   // Vector3DotProduct(vy, eye)
	result.m14 = -(vz.x*eye.x + vz.y*eye.y + vz.z*eye.z);   // Vector3DotProduct(vz, eye)
	result.m15 = 1.0f;
	
	return result;
}

// Get float array of matrix data
RMAPI float16 MatrixToFloatV(Matrix mat)
{
	float16 result = { 0 };
	
	result.v[0] = mat.m0;
	result.v[1] = mat.m1;
	result.v[2] = mat.m2;
	result.v[3] = mat.m3;
	result.v[4] = mat.m4;
	result.v[5] = mat.m5;
	result.v[6] = mat.m6;
	result.v[7] = mat.m7;
	result.v[8] = mat.m8;
	result.v[9] = mat.m9;
	result.v[10] = mat.m10;
	result.v[11] = mat.m11;
	result.v[12] = mat.m12;
	result.v[13] = mat.m13;
	result.v[14] = mat.m14;
	result.v[15] = mat.m15;
	
	return result;
}
*/
