<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1194d04f-9797-4f3c-816c-4467b2cebb9a(com.spclngs.extactions.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145360364" name="jetbrains.mps.lang.plugin.structure.BuildGroupBlock" flags="in" index="fu6FP" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1209911036758" name="jetbrains.mps.lang.plugin.structure.GetGroupOperation" flags="nn" index="2OkkDf">
        <reference id="1209911052601" name="group" index="2Okoww" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="4_91s3j9nm_" />
  <node concept="tC5Ba" id="4_91s3j9nmA">
    <property role="TrG5h" value="ToggleActions" />
    <property role="1XlLyE" value="true" />
    <property role="2f7twF" value="Toggles" />
    <node concept="tT9cl" id="4_91s3jaPA0" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hF$pMQx" resolve="IDEAMainMenu" />
    </node>
    <node concept="fu6FP" id="4_91s3jaMLT" role="ftER_">
      <node concept="3clFbS" id="4_91s3jaMLV" role="2VODD2">
        <node concept="3clFbF" id="19LUKkm6OhW" role="3cqZAp">
          <node concept="2YIFZM" id="19LUKkm6Oni" role="3clFbG">
            <ref role="37wK5l" node="19LUKkm6Mhq" resolve="ensureActionsRegistered" />
            <ref role="1Pybhc" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
          </node>
        </node>
        <node concept="1Dw8fO" id="19LUKkm6y2m" role="3cqZAp">
          <node concept="3clFbS" id="19LUKkm6y2o" role="2LFqv$">
            <node concept="3clFbF" id="19LUKkm6tpf" role="3cqZAp">
              <node concept="2OqwBi" id="19LUKkm6tL5" role="3clFbG">
                <node concept="2WthIp" id="19LUKkm6tpd" role="2Oq$k0" />
                <node concept="liA8E" id="19LUKkm6xK_" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
                  <node concept="2OqwBi" id="19LUKkm6$gx" role="37wK5m">
                    <node concept="2YIFZM" id="19LUKkm6Ow1" role="2Oq$k0">
                      <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                    </node>
                    <node concept="liA8E" id="19LUKkm6$mo" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                      <node concept="2YIFZM" id="19LUKkm6$Rg" role="37wK5m">
                        <ref role="37wK5l" node="19LUKkm69CA" resolve="getId" />
                        <ref role="1Pybhc" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
                        <node concept="37vLTw" id="19LUKkm6$Sz" role="37wK5m">
                          <ref role="3cqZAo" node="19LUKkm6y2p" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="19LUKkm6y2p" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="19LUKkm6yk9" role="1tU5fm" />
            <node concept="3cmrfG" id="19LUKkm6ykP" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="2dkUwp" id="19LUKkm6$CY" role="1Dwp0S">
            <node concept="37vLTw" id="19LUKkm6ylf" role="3uHU7B">
              <ref role="3cqZAo" node="19LUKkm6y2p" resolve="i" />
            </node>
            <node concept="10M0yZ" id="19LUKkm6zj$" role="3uHU7w">
              <ref role="3cqZAo" node="19LUKkm6vT8" resolve="ACTION_COUNT" />
              <ref role="1PxDUh" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
            </node>
          </node>
          <node concept="3uNrnE" id="19LUKkm6zWI" role="1Dwrff">
            <node concept="37vLTw" id="19LUKkm6zWK" role="2$L3a6">
              <ref role="3cqZAo" node="19LUKkm6y2p" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4_91s3j9Ubk">
    <property role="TrG5h" value="ToggleActionExample" />
    <node concept="Wx3nA" id="19LUKkm6vT8" role="jymVt">
      <property role="TrG5h" value="ACTION_COUNT" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="19LUKkm6vTb" role="1tU5fm" />
      <node concept="3cmrfG" id="19LUKkm6vTc" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
      <node concept="3Tm1VV" id="19LUKkm6vTa" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="19LUKkm6uBt" role="jymVt" />
    <node concept="2YIFZL" id="19LUKkm69CA" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3clFbS" id="19LUKkm69CD" role="3clF47">
        <node concept="3cpWs6" id="19LUKkm6bjy" role="3cqZAp">
          <node concept="3cpWs3" id="19LUKkm6bEc" role="3cqZAk">
            <node concept="37vLTw" id="19LUKkm6bXr" role="3uHU7w">
              <ref role="3cqZAo" node="19LUKkm6ax7" resolve="state" />
            </node>
            <node concept="3cpWs3" id="19LUKkm6fq4" role="3uHU7B">
              <node concept="Xl_RD" id="19LUKkm6fuT" role="3uHU7w">
                <property role="Xl_RC" value="_" />
              </node>
              <node concept="2OqwBi" id="19LUKkm6dWC" role="3uHU7B">
                <node concept="3VsKOn" id="19LUKkm6d$c" role="2Oq$k0">
                  <ref role="3VsUkX" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
                </node>
                <node concept="liA8E" id="19LUKkm6f1W" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="19LUKkm67IP" role="1B3o_S" />
      <node concept="17QB3L" id="19LUKkm69A_" role="3clF45" />
      <node concept="37vLTG" id="19LUKkm6ax7" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="10Oyi0" id="19LUKkm6ax6" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="19LUKkm6IPB" role="jymVt" />
    <node concept="2YIFZL" id="19LUKkm6Mhq" role="jymVt">
      <property role="TrG5h" value="ensureActionsRegistered" />
      <node concept="3clFbS" id="19LUKkm6Mht" role="3clF47">
        <node concept="3cpWs8" id="19LUKkm6Nha" role="3cqZAp">
          <node concept="3cpWsn" id="19LUKkm6Nhb" role="3cpWs9">
            <property role="TrG5h" value="actionManager" />
            <node concept="3uibUv" id="19LUKkm6Nhc" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~ActionManager" resolve="ActionManager" />
            </node>
            <node concept="2YIFZM" id="19LUKkm6Nhd" role="33vP2m">
              <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="19LUKkm6Nhe" role="3cqZAp">
          <node concept="3clFbS" id="19LUKkm6Nhf" role="2LFqv$">
            <node concept="3cpWs8" id="19LUKkm6Nhg" role="3cqZAp">
              <node concept="3cpWsn" id="19LUKkm6Nhh" role="3cpWs9">
                <property role="TrG5h" value="id" />
                <node concept="17QB3L" id="19LUKkm6Nhi" role="1tU5fm" />
                <node concept="2YIFZM" id="19LUKkm6Nhj" role="33vP2m">
                  <ref role="37wK5l" node="19LUKkm69CA" resolve="getId" />
                  <ref role="1Pybhc" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
                  <node concept="37vLTw" id="19LUKkm6Nhk" role="37wK5m">
                    <ref role="3cqZAo" node="19LUKkm6Nh_" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="19LUKkm6Nhl" role="3cqZAp">
              <node concept="3clFbS" id="19LUKkm6Nhm" role="3clFbx">
                <node concept="3clFbF" id="19LUKkm6Nhn" role="3cqZAp">
                  <node concept="2OqwBi" id="19LUKkm6Nho" role="3clFbG">
                    <node concept="37vLTw" id="19LUKkm6Nhp" role="2Oq$k0">
                      <ref role="3cqZAo" node="19LUKkm6Nhb" resolve="actionManager" />
                    </node>
                    <node concept="liA8E" id="19LUKkm6Nhq" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~ActionManager.registerAction(java.lang.String,com.intellij.openapi.actionSystem.AnAction)" resolve="registerAction" />
                      <node concept="37vLTw" id="19LUKkm6Nhr" role="37wK5m">
                        <ref role="3cqZAo" node="19LUKkm6Nhh" resolve="id" />
                      </node>
                      <node concept="2ShNRf" id="19LUKkm6Nhs" role="37wK5m">
                        <node concept="1pGfFk" id="19LUKkm6Nht" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" node="4_91s3ja1fy" resolve="ToggleActionExample" />
                          <node concept="37vLTw" id="19LUKkm6Nhu" role="37wK5m">
                            <ref role="3cqZAo" node="19LUKkm6Nh_" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="19LUKkm6Nhv" role="3clFbw">
                <node concept="10Nm6u" id="19LUKkm6Nhw" role="3uHU7w" />
                <node concept="2OqwBi" id="19LUKkm6Nhx" role="3uHU7B">
                  <node concept="37vLTw" id="19LUKkm6Nhy" role="2Oq$k0">
                    <ref role="3cqZAo" node="19LUKkm6Nhb" resolve="actionManager" />
                  </node>
                  <node concept="liA8E" id="19LUKkm6Nhz" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                    <node concept="37vLTw" id="19LUKkm6Nh$" role="37wK5m">
                      <ref role="3cqZAo" node="19LUKkm6Nhh" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="19LUKkm6Nh_" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="19LUKkm6NhA" role="1tU5fm" />
            <node concept="3cmrfG" id="19LUKkm6NhB" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="2dkUwp" id="19LUKkm6NhC" role="1Dwp0S">
            <node concept="37vLTw" id="19LUKkm6NhD" role="3uHU7B">
              <ref role="3cqZAo" node="19LUKkm6Nh_" resolve="i" />
            </node>
            <node concept="37vLTw" id="19LUKkm6NhI" role="3uHU7w">
              <ref role="3cqZAo" node="19LUKkm6vT8" resolve="ACTION_COUNT" />
            </node>
          </node>
          <node concept="3uNrnE" id="19LUKkm6NhF" role="1Dwrff">
            <node concept="37vLTw" id="19LUKkm6NhG" role="2$L3a6">
              <ref role="3cqZAo" node="19LUKkm6Nh_" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="19LUKkm6KAh" role="1B3o_S" />
      <node concept="3cqZAl" id="19LUKkm6Lus" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="19LUKkm6fMo" role="jymVt" />
    <node concept="Wx3nA" id="4_91s3j9Yps" role="jymVt">
      <property role="TrG5h" value="selectedStates" />
      <node concept="3Tm1VV" id="4_91s3j9VcQ" role="1B3o_S" />
      <node concept="2ShNRf" id="4_91s3jamI4" role="33vP2m">
        <node concept="1pGfFk" id="4_91s3jarT6" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
        </node>
      </node>
      <node concept="3uibUv" id="4_91s3jakmE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4_91s3jalXm" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4_91s3j9YCd" role="jymVt" />
    <node concept="312cEg" id="4_91s3ja0YY" role="jymVt">
      <property role="TrG5h" value="state" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4_91s3ja0$4" role="1B3o_S" />
      <node concept="10Oyi0" id="4_91s3ja0Uj" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4_91s3ja1bX" role="jymVt" />
    <node concept="3Tm1VV" id="4_91s3j9Ubl" role="1B3o_S" />
    <node concept="3uibUv" id="4_91s3j9Uu6" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
    </node>
    <node concept="3clFbW" id="4_91s3ja1fy" role="jymVt">
      <node concept="3cqZAl" id="4_91s3ja1fz" role="3clF45" />
      <node concept="3Tm1VV" id="4_91s3ja1f$" role="1B3o_S" />
      <node concept="3clFbS" id="4_91s3ja1fA" role="3clF47">
        <node concept="XkiVB" id="4_91s3ja5ib" role="3cqZAp">
          <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String)" resolve="ToggleAction" />
          <node concept="3cpWs3" id="4_91s3ja5Xh" role="37wK5m">
            <node concept="37vLTw" id="4_91s3ja6xM" role="3uHU7w">
              <ref role="3cqZAo" node="4_91s3ja1fD" resolve="myState" />
            </node>
            <node concept="Xl_RD" id="4_91s3ja5va" role="3uHU7B">
              <property role="Xl_RC" value="Toggle State " />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_91s3ja1fE" role="3cqZAp">
          <node concept="37vLTI" id="4_91s3ja1fG" role="3clFbG">
            <node concept="2OqwBi" id="4_91s3ja1fK" role="37vLTJ">
              <node concept="Xjq3P" id="4_91s3ja1fL" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_91s3ja1fM" role="2OqNvi">
                <ref role="2Oxat5" node="4_91s3ja0YY" resolve="myState" />
              </node>
            </node>
            <node concept="37vLTw" id="4_91s3ja1fN" role="37vLTx">
              <ref role="3cqZAo" node="4_91s3ja1fD" resolve="myState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4_91s3ja1fD" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="10Oyi0" id="4_91s3ja1fC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4_91s3ja72A" role="jymVt" />
    <node concept="3clFb_" id="4_91s3j9UuO" role="jymVt">
      <property role="TrG5h" value="isSelected" />
      <node concept="3Tm1VV" id="4_91s3j9UuP" role="1B3o_S" />
      <node concept="10P_77" id="4_91s3j9UuR" role="3clF45" />
      <node concept="37vLTG" id="4_91s3j9UuS" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="4_91s3j9UuT" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
        <node concept="2AHcQZ" id="4_91s3j9UuU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4_91s3j9UuV" role="3clF47">
        <node concept="3clFbF" id="4_91s3javzs" role="3cqZAp">
          <node concept="2OqwBi" id="4_91s3jawkZ" role="3clFbG">
            <node concept="37vLTw" id="4_91s3javzq" role="2Oq$k0">
              <ref role="3cqZAo" node="4_91s3j9Yps" resolve="selectedStates" />
            </node>
            <node concept="liA8E" id="4_91s3jayh7" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
              <node concept="37vLTw" id="4_91s3jazD6" role="37wK5m">
                <ref role="3cqZAo" node="4_91s3ja0YY" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_91s3j9UuW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4_91s3j9UuZ" role="jymVt">
      <property role="TrG5h" value="setSelected" />
      <node concept="3Tm1VV" id="4_91s3j9Uv0" role="1B3o_S" />
      <node concept="3cqZAl" id="4_91s3j9Uv2" role="3clF45" />
      <node concept="37vLTG" id="4_91s3j9Uv3" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="4_91s3j9Uv4" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
        <node concept="2AHcQZ" id="4_91s3j9Uv5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4_91s3j9Uv6" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="4_91s3j9Uv7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4_91s3j9Uv8" role="3clF47">
        <node concept="3clFbJ" id="4_91s3ja_lG" role="3cqZAp">
          <node concept="3clFbS" id="4_91s3ja_lI" role="3clFbx">
            <node concept="3clFbF" id="4_91s3jaBWw" role="3cqZAp">
              <node concept="2OqwBi" id="4_91s3jaCBo" role="3clFbG">
                <node concept="37vLTw" id="4_91s3jaBWu" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_91s3j9Yps" resolve="selectedStates" />
                </node>
                <node concept="liA8E" id="4_91s3jaEfI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4_91s3jaFcA" role="37wK5m">
                    <ref role="3cqZAo" node="4_91s3ja0YY" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4_91s3jaA0B" role="3clFbw">
            <ref role="3cqZAo" node="4_91s3j9Uv6" resolve="b" />
          </node>
          <node concept="9aQIb" id="4_91s3jaFYw" role="9aQIa">
            <node concept="3clFbS" id="4_91s3jaFYx" role="9aQI4">
              <node concept="3clFbF" id="4_91s3jaIeP" role="3cqZAp">
                <node concept="2OqwBi" id="4_91s3jaIUt" role="3clFbG">
                  <node concept="37vLTw" id="4_91s3jaIeO" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_91s3j9Yps" resolve="selectedStates" />
                  </node>
                  <node concept="liA8E" id="4_91s3jaKOA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="4_91s3jaLcz" role="37wK5m">
                      <ref role="3cqZAo" node="4_91s3ja0YY" resolve="state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4_91s3j9Uv9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7g9M9eHR8px">
    <property role="TrG5h" value="ComboBoxActionExample" />
    <node concept="2tJIrI" id="7g9M9eHRv$R" role="jymVt" />
    <node concept="3Tm1VV" id="7g9M9eHR8py" role="1B3o_S" />
    <node concept="3uibUv" id="7g9M9eHR8T6" role="1zkMxy">
      <ref role="3uigEE" to="8rsk:~ComboBoxAction" resolve="ComboBoxAction" />
    </node>
    <node concept="3clFbW" id="7g9M9eHRvBB" role="jymVt">
      <node concept="3cqZAl" id="7g9M9eHRvBC" role="3clF45" />
      <node concept="3Tm1VV" id="7g9M9eHRvBD" role="1B3o_S" />
      <node concept="3clFbS" id="7g9M9eHRvBF" role="3clF47">
        <node concept="3clFbF" id="7g9M9eHS9Tj" role="3cqZAp">
          <node concept="2OqwBi" id="7g9M9eHSauF" role="3clFbG">
            <node concept="1rXfSq" id="7g9M9eHSeGF" role="2Oq$k0">
              <ref role="37wK5l" to="qkt:~AnAction.getTemplatePresentation()" resolve="getTemplatePresentation" />
            </node>
            <node concept="liA8E" id="7g9M9eHSaGw" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="Xl_RD" id="7g9M9eHSaLl" role="37wK5m">
                <property role="Xl_RC" value="Example Combo Box Action" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7g9M9eHRQ$B" role="jymVt" />
    <node concept="3clFb_" id="7g9M9eHR8Tu" role="jymVt">
      <property role="TrG5h" value="createPopupActionGroup" />
      <node concept="3Tmbuc" id="7g9M9eHR8Tv" role="1B3o_S" />
      <node concept="2AHcQZ" id="7g9M9eHR8Tx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7g9M9eHR8Ty" role="3clF45">
        <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="37vLTG" id="7g9M9eHR8Tz" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="7g9M9eHR8T$" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="7g9M9eHR8T_" role="3clF47">
        <node concept="3SKdUt" id="7g9M9eHR9h4" role="3cqZAp">
          <node concept="1PaTwC" id="7g9M9eHR9h5" role="1aUNEU">
            <node concept="3oM_SD" id="7g9M9eHR9hc" role="1PaTwD">
              <property role="3oM_SC" value="Can" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHR9he" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHR9hh" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSbyF" role="1PaTwD">
              <property role="3oM_SC" value="component" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSbyZ" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSbzN" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSb$5" role="1PaTwD">
              <property role="3oM_SC" value="DataManager" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSb$u" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSb$C" role="1PaTwD">
              <property role="3oM_SC" value="obtain" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSb$V" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
            <node concept="3oM_SD" id="7g9M9eHSb_E" role="1PaTwD">
              <property role="3oM_SC" value="parameters." />
            </node>
            <node concept="3oM_SD" id="7g9M9eHRolQ" role="1PaTwD">
              <property role="3oM_SC" value="Example:" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7g9M9eHRoio" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7g9M9eHRlr$" role="8Wnug">
            <node concept="2OqwBi" id="7g9M9eHRn1j" role="3clFbG">
              <node concept="10M0yZ" id="7g9M9eHRm21" role="2Oq$k0">
                <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
              </node>
              <node concept="liA8E" id="7g9M9eHRngR" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="7g9M9eHRf8D" role="37wK5m">
                  <node concept="2YIFZM" id="7g9M9eHRf4d" role="2Oq$k0">
                    <ref role="37wK5l" to="ddhc:~DataManager.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
                  </node>
                  <node concept="liA8E" id="7g9M9eHRfe1" role="2OqNvi">
                    <ref role="37wK5l" to="ddhc:~DataManager.getDataContext(java.awt.Component)" resolve="getDataContext" />
                    <node concept="37vLTw" id="7g9M9eHRj9a" role="37wK5m">
                      <ref role="3cqZAo" node="7g9M9eHR8Tz" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7g9M9eHRon6" role="3cqZAp" />
        <node concept="3cpWs6" id="19LUKkm6C4H" role="3cqZAp">
          <node concept="2OkkDf" id="19LUKkm6CIm" role="3cqZAk">
            <ref role="2Okoww" node="4_91s3j9nmA" resolve="ToggleActions" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7g9M9eHR8TA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7g9M9eHS585">
    <property role="TrG5h" value="ContributeComboBoxAction" />
    <node concept="fu6FP" id="7g9M9eHS58y" role="ftER_">
      <node concept="3clFbS" id="7g9M9eHS58$" role="2VODD2">
        <node concept="3clFbF" id="7g9M9eHS5ll" role="3cqZAp">
          <node concept="2OqwBi" id="7g9M9eHS5An" role="3clFbG">
            <node concept="2WthIp" id="7g9M9eHS5lk" role="2Oq$k0" />
            <node concept="liA8E" id="7g9M9eHS5S5" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="7g9M9eHS5S9" role="37wK5m">
                <node concept="1pGfFk" id="7g9M9eHS80o" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="7g9M9eHRvBB" resolve="ComboBoxActionExample" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="7g9M9eHS87x" role="2f5YQi">
      <ref role="tU$_T" to="tprs:WmrxDqd_N1" resolve="IDEAToolBar" />
    </node>
  </node>
  <node concept="2uRRBC" id="19LUKkm5JI2">
    <property role="TrG5h" value="RegisterToggleActions" />
    <node concept="2uRRBj" id="19LUKkm5JI3" role="2uRRBE">
      <node concept="3clFbS" id="19LUKkm5JI4" role="2VODD2">
        <node concept="3clFbF" id="19LUKkm6PiD" role="3cqZAp">
          <node concept="2YIFZM" id="19LUKkm6Pn5" role="3clFbG">
            <ref role="37wK5l" node="19LUKkm6Mhq" resolve="ensureActionsRegistered" />
            <ref role="1Pybhc" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="19LUKkm6pud" role="2uRRBF">
      <node concept="3clFbS" id="19LUKkm6pue" role="2VODD2">
        <node concept="1Dw8fO" id="19LUKkm6pZB" role="3cqZAp">
          <node concept="3cpWsn" id="19LUKkm6pZC" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="19LUKkm6q9l" role="1tU5fm" />
            <node concept="3cmrfG" id="19LUKkm6qcS" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="19LUKkm6pZD" role="2LFqv$">
            <node concept="3clFbF" id="19LUKkm6snu" role="3cqZAp">
              <node concept="2OqwBi" id="19LUKkm6srH" role="3clFbG">
                <node concept="2YIFZM" id="19LUKkm6soq" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="19LUKkm6swU" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.unregisterAction(java.lang.String)" resolve="unregisterAction" />
                  <node concept="2YIFZM" id="19LUKkm6s$o" role="37wK5m">
                    <ref role="37wK5l" node="19LUKkm69CA" resolve="getId" />
                    <ref role="1Pybhc" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
                    <node concept="37vLTw" id="19LUKkm6s_q" role="37wK5m">
                      <ref role="3cqZAo" node="19LUKkm6pZC" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="19LUKkm6qLm" role="1Dwp0S">
            <node concept="37vLTw" id="19LUKkm6qdg" role="3uHU7B">
              <ref role="3cqZAo" node="19LUKkm6pZC" resolve="i" />
            </node>
            <node concept="10M0yZ" id="19LUKkm6xtM" role="3uHU7w">
              <ref role="1PxDUh" node="4_91s3j9Ubk" resolve="ToggleActionExample" />
              <ref role="3cqZAo" node="19LUKkm6vT8" resolve="ACTION_COUNT" />
            </node>
          </node>
          <node concept="3uNrnE" id="19LUKkm6rmN" role="1Dwrff">
            <node concept="37vLTw" id="19LUKkm6rmP" role="2$L3a6">
              <ref role="3cqZAo" node="19LUKkm6pZC" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

