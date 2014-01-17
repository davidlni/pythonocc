// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOPTColStd_ListIteratorOfListOfListOfShape_HeaderFile
#define _XBOPTColStd_ListIteratorOfListOfListOfShape_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _Handle_XBOPTColStd_ListNodeOfListOfListOfShape_HeaderFile
#include <Handle_XBOPTColStd_ListNodeOfListOfListOfShape.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_NoMoreObject;
class Standard_NoSuchObject;
class XBOPTColStd_ListOfListOfShape;
class TopTools_ListOfShape;
class XBOPTColStd_ListNodeOfListOfListOfShape;



class XBOPTColStd_ListIteratorOfListOfListOfShape  {
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

  
  Standard_EXPORT   XBOPTColStd_ListIteratorOfListOfListOfShape();
  
  Standard_EXPORT   XBOPTColStd_ListIteratorOfListOfListOfShape(const XBOPTColStd_ListOfListOfShape& L);
  
  Standard_EXPORT     void Initialize(const XBOPTColStd_ListOfListOfShape& L) ;
  
        Standard_Boolean More() const;
  
  Standard_EXPORT     void Next() ;
  
  Standard_EXPORT     TopTools_ListOfShape& Value() const;


friend class XBOPTColStd_ListOfListOfShape;



protected:





private:



Standard_Address current;
Standard_Address previous;


};

#define Item TopTools_ListOfShape
#define Item_hxx <TopTools_ListOfShape.hxx>
#define TCollection_ListNode XBOPTColStd_ListNodeOfListOfListOfShape
#define TCollection_ListNode_hxx <XBOPTColStd_ListNodeOfListOfListOfShape.hxx>
#define TCollection_ListIterator XBOPTColStd_ListIteratorOfListOfListOfShape
#define TCollection_ListIterator_hxx <XBOPTColStd_ListIteratorOfListOfListOfShape.hxx>
#define Handle_TCollection_ListNode Handle_XBOPTColStd_ListNodeOfListOfListOfShape
#define TCollection_ListNode_Type_() XBOPTColStd_ListNodeOfListOfListOfShape_Type_()
#define TCollection_List XBOPTColStd_ListOfListOfShape
#define TCollection_List_hxx <XBOPTColStd_ListOfListOfShape.hxx>

#include <TCollection_ListIterator.lxx>

#undef Item
#undef Item_hxx
#undef TCollection_ListNode
#undef TCollection_ListNode_hxx
#undef TCollection_ListIterator
#undef TCollection_ListIterator_hxx
#undef Handle_TCollection_ListNode
#undef TCollection_ListNode_Type_
#undef TCollection_List
#undef TCollection_List_hxx


// other Inline functions and methods (like "C++: function call" methods)


#endif
