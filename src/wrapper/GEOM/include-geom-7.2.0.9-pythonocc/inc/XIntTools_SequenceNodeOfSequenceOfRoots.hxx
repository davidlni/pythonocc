// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XIntTools_SequenceNodeOfSequenceOfRoots_HeaderFile
#define _XIntTools_SequenceNodeOfSequenceOfRoots_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_DefineHandle_HeaderFile
#include <Standard_DefineHandle.hxx>
#endif
#ifndef _Handle_XIntTools_SequenceNodeOfSequenceOfRoots_HeaderFile
#include <Handle_XIntTools_SequenceNodeOfSequenceOfRoots.hxx>
#endif

#ifndef _XIntTools_Root_HeaderFile
#include <XIntTools_Root.hxx>
#endif
#ifndef _TCollection_SeqNode_HeaderFile
#include <TCollection_SeqNode.hxx>
#endif
#ifndef _TCollection_SeqNodePtr_HeaderFile
#include <TCollection_SeqNodePtr.hxx>
#endif
class XIntTools_Root;
class XIntTools_SequenceOfRoots;



class XIntTools_SequenceNodeOfSequenceOfRoots : public TCollection_SeqNode {

public:

  
      XIntTools_SequenceNodeOfSequenceOfRoots(const XIntTools_Root& I,const TCollection_SeqNodePtr& n,const TCollection_SeqNodePtr& p);
  
        XIntTools_Root& Value() const;




  DEFINE_STANDARD_RTTI(XIntTools_SequenceNodeOfSequenceOfRoots)

protected:




private: 


XIntTools_Root myValue;


};

#define SeqItem XIntTools_Root
#define SeqItem_hxx <XIntTools_Root.hxx>
#define TCollection_SequenceNode XIntTools_SequenceNodeOfSequenceOfRoots
#define TCollection_SequenceNode_hxx <XIntTools_SequenceNodeOfSequenceOfRoots.hxx>
#define Handle_TCollection_SequenceNode Handle_XIntTools_SequenceNodeOfSequenceOfRoots
#define TCollection_SequenceNode_Type_() XIntTools_SequenceNodeOfSequenceOfRoots_Type_()
#define TCollection_Sequence XIntTools_SequenceOfRoots
#define TCollection_Sequence_hxx <XIntTools_SequenceOfRoots.hxx>

#include <TCollection_SequenceNode.lxx>

#undef SeqItem
#undef SeqItem_hxx
#undef TCollection_SequenceNode
#undef TCollection_SequenceNode_hxx
#undef Handle_TCollection_SequenceNode
#undef TCollection_SequenceNode_Type_
#undef TCollection_Sequence
#undef TCollection_Sequence_hxx


// other Inline functions and methods (like "C++: function call" methods)


#endif
