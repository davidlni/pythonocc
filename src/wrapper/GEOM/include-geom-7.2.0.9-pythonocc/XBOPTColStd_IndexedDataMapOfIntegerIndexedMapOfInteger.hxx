// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger_HeaderFile
#define _XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Handle_XBOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger_HeaderFile
#include <Handle_XBOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
class Standard_DomainError;
class Standard_OutOfRange;
class Standard_NoSuchObject;
class TColStd_IndexedMapOfInteger;
class TColStd_MapIntegerHasher;
class XBOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger;



class XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger  : public TCollection_BasicMap {
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

  
  Standard_EXPORT   XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger(const Standard_Integer NbBuckets = 1);
  
  Standard_EXPORT     XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& Assign(const XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& Other) ;
    XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& operator =(const XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& Other) 
{
  return Assign(Other);
}
  
  Standard_EXPORT     void ReSize(const Standard_Integer NbBuckets) ;
  
  Standard_EXPORT     void Clear() ;
~XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger()
{
  Clear();
}
  
  Standard_EXPORT     Standard_Integer Add(const Standard_Integer& K,const TColStd_IndexedMapOfInteger& I) ;
  
  Standard_EXPORT     void Substitute(const Standard_Integer I,const Standard_Integer& K,const TColStd_IndexedMapOfInteger& T) ;
  
  Standard_EXPORT     void RemoveLast() ;
  
  Standard_EXPORT     Standard_Boolean Contains(const Standard_Integer& K) const;
  
  Standard_EXPORT    const Standard_Integer& FindKey(const Standard_Integer I) const;
  
  Standard_EXPORT    const TColStd_IndexedMapOfInteger& FindFromIndex(const Standard_Integer I) const;
   const TColStd_IndexedMapOfInteger& operator ()(const Standard_Integer I) const
{
  return FindFromIndex(I);
}
  
  Standard_EXPORT     TColStd_IndexedMapOfInteger& ChangeFromIndex(const Standard_Integer I) ;
    TColStd_IndexedMapOfInteger& operator ()(const Standard_Integer I) 
{
  return ChangeFromIndex(I);
}
  
  Standard_EXPORT     Standard_Integer FindIndex(const Standard_Integer& K) const;
  
  Standard_EXPORT    const TColStd_IndexedMapOfInteger& FindFromKey(const Standard_Integer& K) const;
  
  Standard_EXPORT     TColStd_IndexedMapOfInteger& ChangeFromKey(const Standard_Integer& K) ;
  
  Standard_EXPORT     Standard_Address FindFromKey1(const Standard_Integer& K) const;
  
  Standard_EXPORT     Standard_Address ChangeFromKey1(const Standard_Integer& K) ;





protected:





private:

  
  Standard_EXPORT   XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger(const XBOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& Other);




};





// other Inline functions and methods (like "C++: function call" methods)


#endif
