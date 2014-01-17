// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOP_BlockBuilder_HeaderFile
#define _XBOP_BlockBuilder_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

#ifndef _TColStd_DataMapOfIntegerInteger_HeaderFile
#include <TColStd_DataMapOfIntegerInteger.hxx>
#endif
#ifndef _TopTools_IndexedMapOfOrientedShape_HeaderFile
#include <TopTools_IndexedMapOfOrientedShape.hxx>
#endif
#ifndef _TColStd_SequenceOfInteger_HeaderFile
#include <TColStd_SequenceOfInteger.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class XBOP_ShapeSet;
class XBOP_BlockIterator;
class TopoDS_Shape;



//!  auxiliary class to storage and operate with data of <br>
//!  connexity blocks inside the given ShapeSet <br>
//! <br>
class XBOP_BlockBuilder  {
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

  
//! Empty  Constructor <br>
  Standard_EXPORT   XBOP_BlockBuilder();
  
//! Create an  object for given ShapeSet <br>
  Standard_EXPORT   XBOP_BlockBuilder(XBOP_ShapeSet& SS);
  
//! Compute the set of connexity blocks of elements <br>
//! for of the ShapeSet SS <br>
//! <br>
//! <br>
//!   I t e r a t i o n   o n   b l o c k s made by MakeBlock <br>
//! <br>
  Standard_EXPORT     void MakeBlock(XBOP_ShapeSet& SS) ;
  
  Standard_EXPORT     void InitBlock() ;
  
  Standard_EXPORT     Standard_Boolean MoreBlock() const;
  
  Standard_EXPORT     void NextBlock() ;
  
//! Returns the BlockIterator for the current block  . <br>
  Standard_EXPORT     XBOP_BlockIterator BlockIterator() const;
  
//! Returns the current element of <BI>. <br>
  Standard_EXPORT    const TopoDS_Shape& Element(const XBOP_BlockIterator& BI) const;
  
//! Returns the current element with index  <I> . <br>
  Standard_EXPORT    const TopoDS_Shape& Element(const Standard_Integer I) const;
  
//! Returns the index of the current element . <br>
  Standard_EXPORT     Standard_Integer Element(const TopoDS_Shape& S) const;
  
//! Internal <br>
  Standard_EXPORT     Standard_Boolean ElementIsValid(const XBOP_BlockIterator& BI) const;
  
//! Internal <br>
  Standard_EXPORT     Standard_Boolean ElementIsValid(const Standard_Integer I) const;
  
//! Internal <br>
  Standard_EXPORT     Standard_Integer AddElement(const TopoDS_Shape& S) ;
  
//! Internal <br>
  Standard_EXPORT     void SetValid(const XBOP_BlockIterator& BI,const Standard_Boolean IsValid) ;
  
//! Internal <br>
  Standard_EXPORT     void SetValid(const Standard_Integer I,const Standard_Boolean IsValid) ;
  
//! Returns TRUE if all elements inside the current block <br>
//! are biconnexial <br>
  Standard_EXPORT     Standard_Boolean CurrentBlockIsRegular() ;





protected:





private:



TColStd_DataMapOfIntegerInteger myOrientedShapeMapIsValid;
TopTools_IndexedMapOfOrientedShape myOrientedShapeMap;
TColStd_SequenceOfInteger myBlocks;
Standard_Integer myBlockIndex;
Standard_Boolean myIsDone;
TColStd_SequenceOfInteger myBlocksIsRegular;


};





// other Inline functions and methods (like "C++: function call" methods)


#endif
