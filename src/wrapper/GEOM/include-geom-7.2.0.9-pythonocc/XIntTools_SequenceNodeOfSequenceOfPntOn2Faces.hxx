// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XIntTools_SequenceNodeOfSequenceOfPntOn2Faces_HeaderFile
#define _XIntTools_SequenceNodeOfSequenceOfPntOn2Faces_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_DefineHandle_HeaderFile
#include <Standard_DefineHandle.hxx>
#endif
#ifndef _Handle_XIntTools_SequenceNodeOfSequenceOfPntOn2Faces_HeaderFile
#include <Handle_XIntTools_SequenceNodeOfSequenceOfPntOn2Faces.hxx>
#endif

#ifndef _XIntTools_PntOn2Faces_HeaderFile
#include <XIntTools_PntOn2Faces.hxx>
#endif
#ifndef _TCollection_SeqNode_HeaderFile
#include <TCollection_SeqNode.hxx>
#endif
#ifndef _TCollection_SeqNodePtr_HeaderFile
#include <TCollection_SeqNodePtr.hxx>
#endif
class XIntTools_PntOn2Faces;
class XIntTools_SequenceOfPntOn2Faces;



class XIntTools_SequenceNodeOfSequenceOfPntOn2Faces : public TCollection_SeqNode {

public:

  
      XIntTools_SequenceNodeOfSequenceOfPntOn2Faces(const XIntTools_PntOn2Faces& I,const TCollection_SeqNodePtr& n,const TCollection_SeqNodePtr& p);
  
        XIntTools_PntOn2Faces& Value() const;




  DEFINE_STANDARD_RTTI(XIntTools_SequenceNodeOfSequenceOfPntOn2Faces)

protected:




private: 


XIntTools_PntOn2Faces myValue;


};

#define SeqItem XIntTools_PntOn2Faces
#define SeqItem_hxx <XIntTools_PntOn2Faces.hxx>
#define TCollection_SequenceNode XIntTools_SequenceNodeOfSequenceOfPntOn2Faces
#define TCollection_SequenceNode_hxx <XIntTools_SequenceNodeOfSequenceOfPntOn2Faces.hxx>
#define Handle_TCollection_SequenceNode Handle_XIntTools_SequenceNodeOfSequenceOfPntOn2Faces
#define TCollection_SequenceNode_Type_() XIntTools_SequenceNodeOfSequenceOfPntOn2Faces_Type_()
#define TCollection_Sequence XIntTools_SequenceOfPntOn2Faces
#define TCollection_Sequence_hxx <XIntTools_SequenceOfPntOn2Faces.hxx>

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
