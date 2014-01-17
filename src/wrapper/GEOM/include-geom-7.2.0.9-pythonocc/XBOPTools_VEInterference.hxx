// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOPTools_VEInterference_HeaderFile
#define _XBOPTools_VEInterference_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _XBOPTools_ShapeShapeInterference_HeaderFile
#include <XBOPTools_ShapeShapeInterference.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif



//!  class for storing info about an Verex/Edge interference <br>
//! <br>
class XBOPTools_VEInterference  : public XBOPTools_ShapeShapeInterference {
public:

  void* operator new(size_t,void* anAddress) 
  {
    return anAddress;
  }
  void* operator new(size_t size) 
  {
    return Standard::Allocate(size); 
  }
  void  operator delete(void *anAddress) 
  {
    if (anAddress) Standard::Free((Standard_Address&)anAddress); 
  }

  
//! Empty constructor <br>
  Standard_EXPORT   XBOPTools_VEInterference();
  
//! Constructor <br>
//! anIndex1, <br>
//! anIndex2 see XBOPTools_ShapeShapeInterference for details <br>
//! aT -  values of parameter on the edge <br>
  Standard_EXPORT   XBOPTools_VEInterference(const Standard_Integer anIndex1,const Standard_Integer anIndex2,const Standard_Real aT);
  
//! Modifier <br>
  Standard_EXPORT     void SetParameter(const Standard_Real aT) ;
  
//! Selector <br>
  Standard_EXPORT     Standard_Real Parameter() const;





protected:





private:



Standard_Real myParameter;


};





// other Inline functions and methods (like "C++: function call" methods)


#endif
