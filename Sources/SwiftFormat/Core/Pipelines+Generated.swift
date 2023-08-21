//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// This file is automatically generated with generate-pipeline. Do Not Edit!

import SwiftSyntax

/// A syntax visitor that delegates to individual rules for linting.
///
/// This file will be extended with `visit` methods in Pipelines+Generated.swift.
class LintPipeline: SyntaxVisitor {

  /// The formatter context.
  let context: Context

  /// Stores lint and format rule instances, indexed by the `ObjectIdentifier` of a rule's
  /// class type.
  var ruleCache = [ObjectIdentifier: Rule]()

  /// Creates a new lint pipeline.
  init(context: Context) {
    self.context = context
    super.init(viewMode: .sourceAccurate)
  }

  override func visit(_ node: ActorDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: AsExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NeverForceUnwrap.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: AssociatedTypeDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(DontRepeatTypeInStaticProperties.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ClosureExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(OmitReturns.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ClosureParameterSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ClosureSignatureSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(ReturnVoidInsteadOfEmptyTuple.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: CodeBlockItemListSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(DoNotUseSemicolons.visit, for: node)
    visitIfEnabled(NoAssignmentInExpressions.visit, for: node)
    visitIfEnabled(OneVariableDeclarationPerLine.visit, for: node)
    visitIfEnabled(UseEarlyExits.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: CodeBlockSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AmbiguousTrailingClosureOverload.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ConditionElementSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoParensAroundConditions.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: EnumCaseElementSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: EnumCaseParameterSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(DontRepeatTypeInStaticProperties.visit, for: node)
    visitIfEnabled(FullyIndirectEnum.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(OneCasePerLine.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(DontRepeatTypeInStaticProperties.visit, for: node)
    visitIfEnabled(NoAccessLevelOnExtensionDeclaration.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ForStmtSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(UseWhereClausesInForLoops.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ForceUnwrapExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NeverForceUnwrap.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoEmptyTrailingClosureParentheses.visit, for: node)
    visitIfEnabled(OnlyOneTrailingClosureArgument.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(OmitReturns.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    visitIfEnabled(ValidateDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: FunctionParameterSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: FunctionSignatureSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoVoidReturnOnFunctionSignature.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: FunctionTypeSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(ReturnVoidInsteadOfEmptyTuple.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: GenericParameterSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: GenericSpecializationExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(UseShorthandTypeNames.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: IdentifierPatternSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(IdentifiersMustBeASCII.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: IdentifierTypeSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(UseShorthandTypeNames.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: IfExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoParensAroundConditions.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: InfixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoAssignmentInExpressions.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    visitIfEnabled(ValidateDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(GroupNumericLiterals.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: MemberBlockItemListSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(DoNotUseSemicolons.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: MemberBlockSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AmbiguousTrailingClosureOverload.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: OptionalBindingConditionSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: PatternBindingSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(OmitReturns.visit, for: node)
    visitIfEnabled(UseSingleLinePropertyGetter.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: PrecedenceGroupDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(DontRepeatTypeInStaticProperties.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: RepeatStmtSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoParensAroundConditions.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: SourceFileSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(AmbiguousTrailingClosureOverload.visit, for: node)
    visitIfEnabled(FileScopedDeclarationPrivacy.visit, for: node)
    visitIfEnabled(NeverForceUnwrap.visit, for: node)
    visitIfEnabled(NeverUseForceTry.visit, for: node)
    visitIfEnabled(NeverUseImplicitlyUnwrappedOptionals.visit, for: node)
    visitIfEnabled(OrderedImports.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(DontRepeatTypeInStaticProperties.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    visitIfEnabled(UseSynthesizedInitializer.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: SubscriptDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(OmitReturns.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: SwitchCaseLabelSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoLabelsInCasePatterns.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: SwitchCaseListSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoCasesWithOnlyFallthrough.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: SwitchExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoParensAroundConditions.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: TokenSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NoBlockComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: TryExprSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(NeverUseForceTry.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: TypeAliasDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(NoLeadingUnderscores.visit, for: node)
    visitIfEnabled(TypeNamesShouldBeCapitalized.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: ValueBindingPatternSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(UseLetInEveryBoundCaseVariable.visit, for: node)
    return .visitChildren
  }

  override func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
    visitIfEnabled(AllPublicDeclarationsHaveDocumentation.visit, for: node)
    visitIfEnabled(AlwaysUseLowerCamelCase.visit, for: node)
    visitIfEnabled(BeginDocumentationCommentWithOneLineSummary.visit, for: node)
    visitIfEnabled(NeverUseImplicitlyUnwrappedOptionals.visit, for: node)
    visitIfEnabled(UseTripleSlashForDocumentationComments.visit, for: node)
    return .visitChildren
  }
}

extension FormatPipeline {

  func rewrite(_ node: Syntax) -> Syntax {
    var node = node
    node = DoNotUseSemicolons(context: context).rewrite(node)
    node = FileScopedDeclarationPrivacy(context: context).rewrite(node)
    node = FullyIndirectEnum(context: context).rewrite(node)
    node = GroupNumericLiterals(context: context).rewrite(node)
    node = NoAccessLevelOnExtensionDeclaration(context: context).rewrite(node)
    node = NoAssignmentInExpressions(context: context).rewrite(node)
    node = NoCasesWithOnlyFallthrough(context: context).rewrite(node)
    node = NoEmptyTrailingClosureParentheses(context: context).rewrite(node)
    node = NoLabelsInCasePatterns(context: context).rewrite(node)
    node = NoParensAroundConditions(context: context).rewrite(node)
    node = NoVoidReturnOnFunctionSignature(context: context).rewrite(node)
    node = OmitReturns(context: context).rewrite(node)
    node = OneCasePerLine(context: context).rewrite(node)
    node = OneVariableDeclarationPerLine(context: context).rewrite(node)
    node = OrderedImports(context: context).rewrite(node)
    node = ReturnVoidInsteadOfEmptyTuple(context: context).rewrite(node)
    node = UseEarlyExits(context: context).rewrite(node)
    node = UseShorthandTypeNames(context: context).rewrite(node)
    node = UseSingleLinePropertyGetter(context: context).rewrite(node)
    node = UseTripleSlashForDocumentationComments(context: context).rewrite(node)
    node = UseWhereClausesInForLoops(context: context).rewrite(node)
    return node
  }
}
