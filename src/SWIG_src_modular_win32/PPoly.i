/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module PPoly

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include PPoly_dependencies.i


%include PPoly_headers.i




%nodefaultctor Handle_PPoly_Polygon2D;
class Handle_PPoly_Polygon2D : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D();
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D(const Handle_PPoly_Polygon2D &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D(const PPoly_Polygon2D *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_Polygon2D {
	PPoly_Polygon2D* GetObject() {
	return (PPoly_Polygon2D*)$self->Access();
	}
};
%extend Handle_PPoly_Polygon2D {
	~Handle_PPoly_Polygon2D() {
	printf("Call custom destructor for instance of Handle_PPoly_Polygon2D\n");
	}
};

%nodefaultctor Handle_PPoly_HArray1OfTriangle;
class Handle_PPoly_HArray1OfTriangle : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle();
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle(const Handle_PPoly_HArray1OfTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle(const PPoly_HArray1OfTriangle *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_HArray1OfTriangle {
	PPoly_HArray1OfTriangle* GetObject() {
	return (PPoly_HArray1OfTriangle*)$self->Access();
	}
};
%extend Handle_PPoly_HArray1OfTriangle {
	~Handle_PPoly_HArray1OfTriangle() {
	printf("Call custom destructor for instance of Handle_PPoly_HArray1OfTriangle\n");
	}
};

%nodefaultctor Handle_PPoly_Polygon3D;
class Handle_PPoly_Polygon3D : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D();
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D(const Handle_PPoly_Polygon3D &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D(const PPoly_Polygon3D *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_Polygon3D {
	PPoly_Polygon3D* GetObject() {
	return (PPoly_Polygon3D*)$self->Access();
	}
};
%extend Handle_PPoly_Polygon3D {
	~Handle_PPoly_Polygon3D() {
	printf("Call custom destructor for instance of Handle_PPoly_Polygon3D\n");
	}
};

%nodefaultctor Handle_PPoly_Triangulation;
class Handle_PPoly_Triangulation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation();
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation(const Handle_PPoly_Triangulation &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation(const PPoly_Triangulation *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_Triangulation {
	PPoly_Triangulation* GetObject() {
	return (PPoly_Triangulation*)$self->Access();
	}
};
%extend Handle_PPoly_Triangulation {
	~Handle_PPoly_Triangulation() {
	printf("Call custom destructor for instance of Handle_PPoly_Triangulation\n");
	}
};

%nodefaultctor Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle;
class Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle();
		%feature("autodoc", "1");
		Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle(const Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle(const PPoly_VArrayNodeOfFieldOfHArray1OfTriangle *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle {
	PPoly_VArrayNodeOfFieldOfHArray1OfTriangle* GetObject() {
	return (PPoly_VArrayNodeOfFieldOfHArray1OfTriangle*)$self->Access();
	}
};
%extend Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle {
	~Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle() {
	printf("Call custom destructor for instance of Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle\n");
	}
};

%nodefaultctor Handle_PPoly_PolygonOnTriangulation;
class Handle_PPoly_PolygonOnTriangulation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation(const Handle_PPoly_PolygonOnTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation(const PPoly_PolygonOnTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPoly_PolygonOnTriangulation {
	PPoly_PolygonOnTriangulation* GetObject() {
	return (PPoly_PolygonOnTriangulation*)$self->Access();
	}
};
%extend Handle_PPoly_PolygonOnTriangulation {
	~Handle_PPoly_PolygonOnTriangulation() {
	printf("Call custom destructor for instance of Handle_PPoly_PolygonOnTriangulation\n");
	}
};

%nodefaultctor PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle;
class PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle {
	public:
		%feature("autodoc", "1");
		~PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle();
		%feature("autodoc", "1");
		PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle();
		%feature("autodoc", "1");
		PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle(const PPoly_Triangle &aValue);
		%feature("autodoc", "1");
		void SetValue(const PPoly_Triangle &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle {
	~PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle() {
	printf("Call custom destructor for instance of PPoly_VArrayTNodeOfFieldOfHArray1OfTriangle\n");
	}
};

%nodefaultctor PPoly_PolygonOnTriangulation;
class PPoly_PolygonOnTriangulation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PPoly_PolygonOnTriangulation();
		%feature("autodoc", "1");
		PPoly_PolygonOnTriangulation(const Handle_PColStd_HArray1OfInteger &Nodes, const Standard_Real Defl);
		%feature("autodoc", "1");
		PPoly_PolygonOnTriangulation(const Handle_PColStd_HArray1OfInteger &Nodes, const Standard_Real Defl, const Handle_PColStd_HArray1OfReal &Parameters);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger Nodes() const;
		%feature("autodoc", "1");
		void Nodes(const Handle_PColStd_HArray1OfInteger &Nodes);
		%feature("autodoc", "1");
		Standard_Boolean HasParameters() const;
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Parameters() const;
		%feature("autodoc", "1");
		void Parameters(const Handle_PColStd_HArray1OfReal &Param);
		%feature("autodoc", "1");
		PPoly_PolygonOnTriangulation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPoly_PolygonOnTriangulationmyDeflection() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_PolygonOnTriangulationmyDeflection(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPPoly_PolygonOnTriangulationmyNodes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_PolygonOnTriangulationmyNodes(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPPoly_PolygonOnTriangulationmyParameters() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_PolygonOnTriangulationmyParameters(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_PolygonOnTriangulation {
	Handle_PPoly_PolygonOnTriangulation GetHandle() {
	return *(Handle_PPoly_PolygonOnTriangulation*) &$self;
	}
};
%extend PPoly_PolygonOnTriangulation {
	~PPoly_PolygonOnTriangulation() {
	printf("Call custom destructor for instance of PPoly_PolygonOnTriangulation\n");
	}
};

%nodefaultctor PPoly_HArray1OfTriangle;
class PPoly_HArray1OfTriangle : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PPoly_HArray1OfTriangle(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PPoly_HArray1OfTriangle(const Standard_Integer Low, const Standard_Integer Up, const PPoly_Triangle &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PPoly_Triangle &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		PPoly_Triangle Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PPoly_HArray1OfTriangle();
		%feature("autodoc", "1");
		PPoly_HArray1OfTriangle(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPoly_HArray1OfTriangleLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_HArray1OfTriangleLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPoly_HArray1OfTriangleUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_HArray1OfTriangleUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PPoly_FieldOfHArray1OfTriangle & _CSFDB_GetPPoly_HArray1OfTriangleData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_HArray1OfTriangle {
	Handle_PPoly_HArray1OfTriangle GetHandle() {
	return *(Handle_PPoly_HArray1OfTriangle*) &$self;
	}
};
%extend PPoly_HArray1OfTriangle {
	~PPoly_HArray1OfTriangle() {
	printf("Call custom destructor for instance of PPoly_HArray1OfTriangle\n");
	}
};

%nodefaultctor PPoly_Triangulation;
class PPoly_Triangulation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PPoly_Triangulation(const Standard_Real Defl, const Handle_PColgp_HArray1OfPnt &Nodes, const Handle_PPoly_HArray1OfTriangle &Triangles);
		%feature("autodoc", "1");
		PPoly_Triangulation(const Standard_Real Defl, const Handle_PColgp_HArray1OfPnt &Nodes, const Handle_PColgp_HArray1OfPnt2d &UVNodes, const Handle_PPoly_HArray1OfTriangle &Triangles);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUVNodes() const;
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt Nodes() const;
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d UVNodes() const;
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle Triangles() const;
		%feature("autodoc", "1");
		PPoly_Triangulation();
		%feature("autodoc", "1");
		PPoly_Triangulation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPoly_TriangulationmyDeflection() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_TriangulationmyDeflection(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt _CSFDB_GetPPoly_TriangulationmyNodes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_TriangulationmyNodes(const Handle_PColgp_HArray1OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d _CSFDB_GetPPoly_TriangulationmyUVNodes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_TriangulationmyUVNodes(const Handle_PColgp_HArray1OfPnt2d &p);
		%feature("autodoc", "1");
		Handle_PPoly_HArray1OfTriangle _CSFDB_GetPPoly_TriangulationmyTriangles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_TriangulationmyTriangles(const Handle_PPoly_HArray1OfTriangle &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_Triangulation {
	Handle_PPoly_Triangulation GetHandle() {
	return *(Handle_PPoly_Triangulation*) &$self;
	}
};
%extend PPoly_Triangulation {
	~PPoly_Triangulation() {
	printf("Call custom destructor for instance of PPoly_Triangulation\n");
	}
};

%nodefaultctor PPoly_Polygon2D;
class PPoly_Polygon2D : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PPoly_Polygon2D(const Handle_PColgp_HArray1OfPnt2d &Nodes, const Standard_Real Defl);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real Defl);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d Nodes() const;
		%feature("autodoc", "1");
		void Nodes(const Handle_PColgp_HArray1OfPnt2d &Nodes);
		%feature("autodoc", "1");
		PPoly_Polygon2D();
		%feature("autodoc", "1");
		PPoly_Polygon2D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPoly_Polygon2DmyDeflection() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_Polygon2DmyDeflection(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d _CSFDB_GetPPoly_Polygon2DmyNodes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_Polygon2DmyNodes(const Handle_PColgp_HArray1OfPnt2d &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_Polygon2D {
	Handle_PPoly_Polygon2D GetHandle() {
	return *(Handle_PPoly_Polygon2D*) &$self;
	}
};
%extend PPoly_Polygon2D {
	~PPoly_Polygon2D() {
	printf("Call custom destructor for instance of PPoly_Polygon2D\n");
	}
};

%nodefaultctor PPoly_Polygon3D;
class PPoly_Polygon3D : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PPoly_Polygon3D(const Handle_PColgp_HArray1OfPnt &Nodes, const Standard_Real Defl);
		%feature("autodoc", "1");
		PPoly_Polygon3D(const Handle_PColgp_HArray1OfPnt &Nodes, const Handle_PColStd_HArray1OfReal &Parameters, const Standard_Real Defl);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real Defl);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt Nodes() const;
		%feature("autodoc", "1");
		void Nodes(const Handle_PColgp_HArray1OfPnt &Nodes);
		%feature("autodoc", "1");
		Standard_Boolean HasParameters() const;
		%feature("autodoc", "1");
		void Parameters(const Handle_PColStd_HArray1OfReal &Parameters);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Parameters() const;
		%feature("autodoc", "1");
		PPoly_Polygon3D();
		%feature("autodoc", "1");
		PPoly_Polygon3D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPoly_Polygon3DmyDeflection() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_Polygon3DmyDeflection(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt _CSFDB_GetPPoly_Polygon3DmyNodes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_Polygon3DmyNodes(const Handle_PColgp_HArray1OfPnt &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPPoly_Polygon3DmyParameters() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPoly_Polygon3DmyParameters(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_Polygon3D {
	Handle_PPoly_Polygon3D GetHandle() {
	return *(Handle_PPoly_Polygon3D*) &$self;
	}
};
%extend PPoly_Polygon3D {
	~PPoly_Polygon3D() {
	printf("Call custom destructor for instance of PPoly_Polygon3D\n");
	}
};

%nodefaultctor PPoly_FieldOfHArray1OfTriangle;
class PPoly_FieldOfHArray1OfTriangle : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PPoly_FieldOfHArray1OfTriangle();
		%feature("autodoc", "1");
		PPoly_FieldOfHArray1OfTriangle(const Standard_Integer Size);
		%feature("autodoc", "1");
		PPoly_FieldOfHArray1OfTriangle(const PPoly_FieldOfHArray1OfTriangle &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PPoly_FieldOfHArray1OfTriangle &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PPoly_Triangle &Value);
		%feature("autodoc", "1");
		PPoly_Triangle & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		PPoly_Triangle & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PPoly_FieldOfHArray1OfTriangle();

};
%extend PPoly_FieldOfHArray1OfTriangle {
	~PPoly_FieldOfHArray1OfTriangle() {
	printf("Call custom destructor for instance of PPoly_FieldOfHArray1OfTriangle\n");
	}
};

%nodefaultctor PPoly_VArrayNodeOfFieldOfHArray1OfTriangle;
class PPoly_VArrayNodeOfFieldOfHArray1OfTriangle : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PPoly_VArrayNodeOfFieldOfHArray1OfTriangle();
		%feature("autodoc", "1");
		PPoly_VArrayNodeOfFieldOfHArray1OfTriangle(const PPoly_Triangle &aValue);
		%feature("autodoc", "1");
		void SetValue(const PPoly_Triangle &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PPoly_VArrayNodeOfFieldOfHArray1OfTriangle(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PPoly_Triangle & _CSFDB_GetPPoly_VArrayNodeOfFieldOfHArray1OfTrianglemyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPoly_VArrayNodeOfFieldOfHArray1OfTriangle {
	Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle GetHandle() {
	return *(Handle_PPoly_VArrayNodeOfFieldOfHArray1OfTriangle*) &$self;
	}
};
%extend PPoly_VArrayNodeOfFieldOfHArray1OfTriangle {
	~PPoly_VArrayNodeOfFieldOfHArray1OfTriangle() {
	printf("Call custom destructor for instance of PPoly_VArrayNodeOfFieldOfHArray1OfTriangle\n");
	}
};

%nodefaultctor PPoly_Triangle;
class PPoly_Triangle {
	public:
		%feature("autodoc", "1");
		~PPoly_Triangle();
		%feature("autodoc", "1");
		PPoly_Triangle(const Standard_Integer N1, const Standard_Integer N2, const Standard_Integer N3);
		%feature("autodoc", "1");
		void Set(const Standard_Integer N1, const Standard_Integer N2, const Standard_Integer N3);
		%feature("autodoc", "1");
		void Get(Standard_Integer & N1, Standard_Integer & N2, Standard_Integer & N3) const;
		%feature("autodoc", "1");
		PPoly_Triangle();
		%feature("autodoc", "1");
		Standard_Integer & _CSFDB_GetPPoly_TrianglemyNodes(const Standard_Integer i1);

};
%extend PPoly_Triangle {
	~PPoly_Triangle() {
	printf("Call custom destructor for instance of PPoly_Triangle\n");
	}
};