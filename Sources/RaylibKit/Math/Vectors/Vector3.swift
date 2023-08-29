//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import CRaylib

//MARK: - Vector 3

public typealias Vector3f = Vector3<Float>
public typealias Vector3i = Vector3<Int>

public struct Vector3<Scalar>: Vector {
	
	//MARK: Properties
	
	public var x: Scalar
	public var y: Scalar
	public var z: Scalar
	
	//MARK: Initialization
	
	@inlinable public init(_ x: Scalar, _ y: Scalar, _ z: Scalar) {
		self.x = x
		self.y = y
		self.z = z
	}
	
	@inlinable public init(_ v: Scalar) {
		self.init(v, v, v)
	}
	
	//MARK: Utilities

	@_transparent public static func transform(_ transform: (WritableKeyPath<Vector3<Scalar>, Scalar>) throws -> Void) rethrows {
		try transform(\.x)
		try transform(\.y)
		try transform(\.z)
	}
	
	@_transparent public static func map(_ transform: (WritableKeyPath<Vector3, Scalar>) throws -> Scalar) rethrows -> Vector3 {
		Vector3(try transform(\.x), try transform(\.y), try transform(\.z))
	}
	
}

//MARK: - Conformances

extension Vector3: Equatable where Scalar: Equatable { }
extension Vector3: Hashable where Scalar: Hashable { }

//MARK: - Raylib Integration

extension Vector3 where Scalar == Float {
	
	@_transparent public var toRaylib: CRaylib.Vector3 {
		CRaylib.Vector3(x: x, y: y, z: z)
	}
	
}

extension CRaylib.Vector3 {
	
	@_transparent public var toSwift: Vector3f {
		Vector3f(x, y, z)
	}
	
}

/*
//----------------------------------------------------------------------------------
// Module Functions Definition - Vector3 math
//----------------------------------------------------------------------------------

// Vector with components value 0.0f
RMAPI Vector3 Vector3Zero(void)
{
	Vector3 result = { 0.0f, 0.0f, 0.0f };
	
	return result;
}

// Vector with components value 1.0f
RMAPI Vector3 Vector3One(void)
{
	Vector3 result = { 1.0f, 1.0f, 1.0f };
	
	return result;
}

// Add two vectors
RMAPI Vector3 Vector3Add(Vector3 v1, Vector3 v2)
{
	Vector3 result = { v1.x + v2.x, v1.y + v2.y, v1.z + v2.z };
	
	return result;
}

// Add vector and float value
RMAPI Vector3 Vector3AddValue(Vector3 v, float add)
{
	Vector3 result = { v.x + add, v.y + add, v.z + add };
	
	return result;
}

// Subtract two vectors
RMAPI Vector3 Vector3Subtract(Vector3 v1, Vector3 v2)
{
	Vector3 result = { v1.x - v2.x, v1.y - v2.y, v1.z - v2.z };
	
	return result;
}

// Subtract vector by float value
RMAPI Vector3 Vector3SubtractValue(Vector3 v, float sub)
{
	Vector3 result = { v.x - sub, v.y - sub, v.z - sub };
	
	return result;
}

// Multiply vector by scalar
RMAPI Vector3 Vector3Scale(Vector3 v, float scalar)
{
	Vector3 result = { v.x*scalar, v.y*scalar, v.z*scalar };
	
	return result;
}

// Multiply vector by vector
RMAPI Vector3 Vector3Multiply(Vector3 v1, Vector3 v2)
{
	Vector3 result = { v1.x*v2.x, v1.y*v2.y, v1.z*v2.z };
	
	return result;
}

// Calculate two vectors cross product
RMAPI Vector3 Vector3CrossProduct(Vector3 v1, Vector3 v2)
{
	Vector3 result = { v1.y*v2.z - v1.z*v2.y, v1.z*v2.x - v1.x*v2.z, v1.x*v2.y - v1.y*v2.x };
	
	return result;
}

// Calculate one vector perpendicular vector
RMAPI Vector3 Vector3Perpendicular(Vector3 v)
{
	Vector3 result = { 0 };
	
	float min = (float) fabs(v.x);
	Vector3 cardinalAxis = {1.0f, 0.0f, 0.0f};
	
	if (fabs(v.y) < min)
	{
		min = (float) fabs(v.y);
		Vector3 tmp = {0.0f, 1.0f, 0.0f};
		cardinalAxis = tmp;
	}
	
	if (fabs(v.z) < min)
	{
		Vector3 tmp = {0.0f, 0.0f, 1.0f};
		cardinalAxis = tmp;
	}
	
	// Cross product between vectors
	result.x = v.y*cardinalAxis.z - v.z*cardinalAxis.y;
	result.y = v.z*cardinalAxis.x - v.x*cardinalAxis.z;
	result.z = v.x*cardinalAxis.y - v.y*cardinalAxis.x;
	
	return result;
}

// Calculate vector length
RMAPI float Vector3Length(const Vector3 v)
{
	float result = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	
	return result;
}

// Calculate vector square length
RMAPI float Vector3LengthSqr(const Vector3 v)
{
	float result = v.x*v.x + v.y*v.y + v.z*v.z;
	
	return result;
}

// Calculate two vectors dot product
RMAPI float Vector3DotProduct(Vector3 v1, Vector3 v2)
{
	float result = (v1.x*v2.x + v1.y*v2.y + v1.z*v2.z);
	
	return result;
}

// Calculate distance between two vectors
RMAPI float Vector3Distance(Vector3 v1, Vector3 v2)
{
	float result = 0.0f;
	
	float dx = v2.x - v1.x;
	float dy = v2.y - v1.y;
	float dz = v2.z - v1.z;
	result = sqrtf(dx*dx + dy*dy + dz*dz);
	
	return result;
}

// Calculate angle between two vectors in XY and XZ
RMAPI Vector2 Vector3Angle(Vector3 v1, Vector3 v2)
{
	Vector2 result = { 0 };
	
	float dx = v2.x - v1.x;
	float dy = v2.y - v1.y;
	float dz = v2.z - v1.z;
	
	result.x = atan2f(dx, dz);                      // Angle in XZ
	result.y = atan2f(dy, sqrtf(dx*dx + dz*dz));    // Angle in XY
	
	return result;
}

// Negate provided vector (invert direction)
RMAPI Vector3 Vector3Negate(Vector3 v)
{
	Vector3 result = { -v.x, -v.y, -v.z };
	
	return result;
}

// Divide vector by vector
RMAPI Vector3 Vector3Divide(Vector3 v1, Vector3 v2)
{
	Vector3 result = { v1.x/v2.x, v1.y/v2.y, v1.z/v2.z };
	
	return result;
}

// Normalize provided vector
RMAPI Vector3 Vector3Normalize(Vector3 v)
{
	Vector3 result = v;
	
	float length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	if (length == 0.0f) length = 1.0f;
	float ilength = 1.0f/length;
	
	result.x *= ilength;
	result.y *= ilength;
	result.z *= ilength;
	
	return result;
}

// Orthonormalize provided vectors
// Makes vectors normalized and orthogonal to each other
// Gram-Schmidt function implementation
RMAPI void Vector3OrthoNormalize(Vector3 *v1, Vector3 *v2)
{
	float length = 0.0f;
	float ilength = 0.0f;
	
	// Vector3Normalize(*v1);
	Vector3 v = *v1;
	length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	if (length == 0.0f) length = 1.0f;
	ilength = 1.0f/length;
	v1->x *= ilength;
	v1->y *= ilength;
	v1->z *= ilength;
	
	// Vector3CrossProduct(*v1, *v2)
	Vector3 vn1 = { v1->y*v2->z - v1->z*v2->y, v1->z*v2->x - v1->x*v2->z, v1->x*v2->y - v1->y*v2->x };
	
	// Vector3Normalize(vn1);
	v = vn1;
	length = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
	if (length == 0.0f) length = 1.0f;
	ilength = 1.0f/length;
	vn1.x *= ilength;
	vn1.y *= ilength;
	vn1.z *= ilength;
	
	// Vector3CrossProduct(vn1, *v1)
	Vector3 vn2 = { vn1.y*v1->z - vn1.z*v1->y, vn1.z*v1->x - vn1.x*v1->z, vn1.x*v1->y - vn1.y*v1->x };
	
	*v2 = vn2;
}

// Transforms a Vector3 by a given Matrix
RMAPI Vector3 Vector3Transform(Vector3 v, Matrix mat)
{
	Vector3 result = { 0 };
	
	float x = v.x;
	float y = v.y;
	float z = v.z;
	
	result.x = mat.m0*x + mat.m4*y + mat.m8*z + mat.m12;
	result.y = mat.m1*x + mat.m5*y + mat.m9*z + mat.m13;
	result.z = mat.m2*x + mat.m6*y + mat.m10*z + mat.m14;
	
	return result;
}

// Transform a vector by quaternion rotation
RMAPI Vector3 Vector3RotateByQuaternion(Vector3 v, Quaternion q)
{
	Vector3 result = { 0 };
	
	result.x = v.x*(q.x*q.x + q.w*q.w - q.y*q.y - q.z*q.z) + v.y*(2*q.x*q.y - 2*q.w*q.z) + v.z*(2*q.x*q.z + 2*q.w*q.y);
	result.y = v.x*(2*q.w*q.z + 2*q.x*q.y) + v.y*(q.w*q.w - q.x*q.x + q.y*q.y - q.z*q.z) + v.z*(-2*q.w*q.x + 2*q.y*q.z);
	result.z = v.x*(-2*q.w*q.y + 2*q.x*q.z) + v.y*(2*q.w*q.x + 2*q.y*q.z)+ v.z*(q.w*q.w - q.x*q.x - q.y*q.y + q.z*q.z);
	
	return result;
}

// Calculate linear interpolation between two vectors
RMAPI Vector3 Vector3Lerp(Vector3 v1, Vector3 v2, float amount)
{
	Vector3 result = { 0 };
	
	result.x = v1.x + amount*(v2.x - v1.x);
	result.y = v1.y + amount*(v2.y - v1.y);
	result.z = v1.z + amount*(v2.z - v1.z);
	
	return result;
}

// Calculate reflected vector to normal
RMAPI Vector3 Vector3Reflect(Vector3 v, Vector3 normal)
{
	Vector3 result = { 0 };
	
	// I is the original vector
	// N is the normal of the incident plane
	// R = I - (2*N*(DotProduct[I, N]))
	
	float dotProduct = (v.x*normal.x + v.y*normal.y + v.z*normal.z);
	
	result.x = v.x - (2.0f*normal.x)*dotProduct;
	result.y = v.y - (2.0f*normal.y)*dotProduct;
	result.z = v.z - (2.0f*normal.z)*dotProduct;
	
	return result;
}

// Get min value for each pair of components
RMAPI Vector3 Vector3Min(Vector3 v1, Vector3 v2)
{
	Vector3 result = { 0 };
	
	result.x = fminf(v1.x, v2.x);
	result.y = fminf(v1.y, v2.y);
	result.z = fminf(v1.z, v2.z);
	
	return result;
}

// Get max value for each pair of components
RMAPI Vector3 Vector3Max(Vector3 v1, Vector3 v2)
{
	Vector3 result = { 0 };
	
	result.x = fmaxf(v1.x, v2.x);
	result.y = fmaxf(v1.y, v2.y);
	result.z = fmaxf(v1.z, v2.z);
	
	return result;
}

// Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c)
// NOTE: Assumes P is on the plane of the triangle
RMAPI Vector3 Vector3Barycenter(Vector3 p, Vector3 a, Vector3 b, Vector3 c)
{
	Vector3 result = { 0 };
	
	Vector3 v0 = { b.x - a.x, b.y - a.y, b.z - a.z };   // Vector3Subtract(b, a)
	Vector3 v1 = { c.x - a.x, c.y - a.y, c.z - a.z };   // Vector3Subtract(c, a)
	Vector3 v2 = { p.x - a.x, p.y - a.y, p.z - a.z };   // Vector3Subtract(p, a)
	float d00 = (v0.x*v0.x + v0.y*v0.y + v0.z*v0.z);    // Vector3DotProduct(v0, v0)
	float d01 = (v0.x*v1.x + v0.y*v1.y + v0.z*v1.z);    // Vector3DotProduct(v0, v1)
	float d11 = (v1.x*v1.x + v1.y*v1.y + v1.z*v1.z);    // Vector3DotProduct(v1, v1)
	float d20 = (v2.x*v0.x + v2.y*v0.y + v2.z*v0.z);    // Vector3DotProduct(v2, v0)
	float d21 = (v2.x*v1.x + v2.y*v1.y + v2.z*v1.z);    // Vector3DotProduct(v2, v1)
	
	float denom = d00*d11 - d01*d01;
	
	result.y = (d11*d20 - d01*d21)/denom;
	result.z = (d00*d21 - d01*d20)/denom;
	result.x = 1.0f - (result.z + result.y);
	
	return result;
}

// Projects a Vector3 from screen space into object space
// NOTE: We are avoiding calling other raymath functions despite available
RMAPI Vector3 Vector3Unproject(Vector3 source, Matrix projection, Matrix view)
{
	Vector3 result = { 0 };
	
	// Calculate unproject matrix (multiply view patrix by projection matrix) and invert it
	Matrix matViewProj = {      // MatrixMultiply(view, projection);
		view.m0*projection.m0 + view.m1*projection.m4 + view.m2*projection.m8 + view.m3*projection.m12,
		view.m0*projection.m1 + view.m1*projection.m5 + view.m2*projection.m9 + view.m3*projection.m13,
		view.m0*projection.m2 + view.m1*projection.m6 + view.m2*projection.m10 + view.m3*projection.m14,
		view.m0*projection.m3 + view.m1*projection.m7 + view.m2*projection.m11 + view.m3*projection.m15,
		view.m4*projection.m0 + view.m5*projection.m4 + view.m6*projection.m8 + view.m7*projection.m12,
		view.m4*projection.m1 + view.m5*projection.m5 + view.m6*projection.m9 + view.m7*projection.m13,
		view.m4*projection.m2 + view.m5*projection.m6 + view.m6*projection.m10 + view.m7*projection.m14,
		view.m4*projection.m3 + view.m5*projection.m7 + view.m6*projection.m11 + view.m7*projection.m15,
		view.m8*projection.m0 + view.m9*projection.m4 + view.m10*projection.m8 + view.m11*projection.m12,
		view.m8*projection.m1 + view.m9*projection.m5 + view.m10*projection.m9 + view.m11*projection.m13,
		view.m8*projection.m2 + view.m9*projection.m6 + view.m10*projection.m10 + view.m11*projection.m14,
		view.m8*projection.m3 + view.m9*projection.m7 + view.m10*projection.m11 + view.m11*projection.m15,
		view.m12*projection.m0 + view.m13*projection.m4 + view.m14*projection.m8 + view.m15*projection.m12,
		view.m12*projection.m1 + view.m13*projection.m5 + view.m14*projection.m9 + view.m15*projection.m13,
		view.m12*projection.m2 + view.m13*projection.m6 + view.m14*projection.m10 + view.m15*projection.m14,
		view.m12*projection.m3 + view.m13*projection.m7 + view.m14*projection.m11 + view.m15*projection.m15 };
	
	// Calculate inverted matrix -> MatrixInvert(matViewProj);
	// Cache the matrix values (speed optimization)
	float a00 = matViewProj.m0, a01 = matViewProj.m1, a02 = matViewProj.m2, a03 = matViewProj.m3;
	float a10 = matViewProj.m4, a11 = matViewProj.m5, a12 = matViewProj.m6, a13 = matViewProj.m7;
	float a20 = matViewProj.m8, a21 = matViewProj.m9, a22 = matViewProj.m10, a23 = matViewProj.m11;
	float a30 = matViewProj.m12, a31 = matViewProj.m13, a32 = matViewProj.m14, a33 = matViewProj.m15;
	
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
	
	Matrix matViewProjInv = {
		(a11*b11 - a12*b10 + a13*b09)*invDet,
		(-a01*b11 + a02*b10 - a03*b09)*invDet,
		(a31*b05 - a32*b04 + a33*b03)*invDet,
		(-a21*b05 + a22*b04 - a23*b03)*invDet,
		(-a10*b11 + a12*b08 - a13*b07)*invDet,
		(a00*b11 - a02*b08 + a03*b07)*invDet,
		(-a30*b05 + a32*b02 - a33*b01)*invDet,
		(a20*b05 - a22*b02 + a23*b01)*invDet,
		(a10*b10 - a11*b08 + a13*b06)*invDet,
		(-a00*b10 + a01*b08 - a03*b06)*invDet,
		(a30*b04 - a31*b02 + a33*b00)*invDet,
		(-a20*b04 + a21*b02 - a23*b00)*invDet,
		(-a10*b09 + a11*b07 - a12*b06)*invDet,
		(a00*b09 - a01*b07 + a02*b06)*invDet,
		(-a30*b03 + a31*b01 - a32*b00)*invDet,
		(a20*b03 - a21*b01 + a22*b00)*invDet };
	
	// Create quaternion from source point
	Quaternion quat = { source.x, source.y, source.z, 1.0f };
	
	// Multiply quat point by unproject matrix
	Quaternion qtransformed = {     // QuaternionTransform(quat, matViewProjInv)
		matViewProjInv.m0*quat.x + matViewProjInv.m4*quat.y + matViewProjInv.m8*quat.z + matViewProjInv.m12*quat.w,
		matViewProjInv.m1*quat.x + matViewProjInv.m5*quat.y + matViewProjInv.m9*quat.z + matViewProjInv.m13*quat.w,
		matViewProjInv.m2*quat.x + matViewProjInv.m6*quat.y + matViewProjInv.m10*quat.z + matViewProjInv.m14*quat.w,
		matViewProjInv.m3*quat.x + matViewProjInv.m7*quat.y + matViewProjInv.m11*quat.z + matViewProjInv.m15*quat.w };
	
	// Normalized world points in vectors
	result.x = qtransformed.x/qtransformed.w;
	result.y = qtransformed.y/qtransformed.w;
	result.z = qtransformed.z/qtransformed.w;
	
	return result;
}

// Get Vector3 as float array
RMAPI float3 Vector3ToFloatV(Vector3 v)
{
	float3 buffer = { 0 };
	
	buffer.v[0] = v.x;
	buffer.v[1] = v.y;
	buffer.v[2] = v.z;
	
	return buffer;
}

*/
