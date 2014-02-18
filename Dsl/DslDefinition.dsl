﻿<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="8f2ca638-e08f-4b6f-96a1-ea046a25c190" Description="An open source visual designer for ASP.NET MVC framework. (Prototype version, and more features will be implemented soon)" Name="MVCVisualDesigner" DisplayName="MVC Visual Designer" Namespace="MVCVisualDesigner" MajorVersion="0" Build="3" ProductName="MVC Visual Designer" CompanyName="Jun Wang" PackageGuid="2318dda0-8eed-4398-b67d-2e85e627224d" PackageNamespace="MVCVisualDesigner" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="404ac32b-b3af-4662-bd2e-14f13a17562b" Description="" Name="VDWidget" DisplayName="Widget" InheritanceModifier="Abstract" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true">
      <Properties>
        <DomainProperty Id="16811f57-2684-4aa9-8695-4f5e2435b04e" Description="" Name="MoreHTMLAttributes" DisplayName="MoreHTMLAttributes" DefaultValue="" Kind="CustomStorage" Category="Custom HTML Attribute">
          <Attributes>
            <ClrAttribute Name="System.ComponentModel.EditorAttribute">
              <Parameters>
                <AttributeParameter Value="typeof(MVCVisualDesigner.VDCollectionEditor)" />
                <AttributeParameter Value="typeof(System.Drawing.Design.UITypeEditor)" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System.Collections.Generic/List&lt;MVCVisualDesigner.HTMLAttribute&gt;" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8d3d89da-d2cf-49dd-b090-c98bfc4c22d7" Description="Code snippet surrounding this widget" Name="CodeSnippet" DisplayName="Code Snippet" Category="Coding" IsUIReadOnly="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2262ee8c-8983-4d6b-b640-6321f3358337" Description="Widget Name, can be empty and duplicated?" Name="WidgetName" DisplayName="Widget Name" Category="Definition" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDWidget" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>WidgetHasChildren.Children</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDWidgetTitle" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>WidgetHasTitle.Title</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective UsesCustomMerge="true">
          <Index>
            <DomainClassMoniker Name="VDSection" />
          </Index>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="7c91a0ff-d5ec-467a-b0b8-705ad9049330" Description="" Name="VDView" DisplayName="View" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="db6a631c-6a2e-494c-b56d-a4f048c50743" Description="" Name="VDSection" DisplayName="Section" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDSectionHead" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>SectionHasHead.Head</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDSectionBody" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>SectionHasBody.Body</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f9e27ebe-1427-48d9-bba0-b1dfa993ee87" Description="Description for MVCVisualDesigner.VDWidgetTitle" Name="VDWidgetTitle" DisplayName="VDWidget Title" Namespace="MVCVisualDesigner" />
    <DomainClass Id="c5bcbb13-6519-4896-9e8e-2cda89a5c3f6" Description="" Name="VDSectionHead" DisplayName="Section Head" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="b39ae87a-6919-4e1d-a310-83dda7754090" Description="" Name="VDSectionBody" DisplayName="Section Body" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="2500aa65-1d54-460f-a7d5-278035a0f8e3" Description="Description for MVCVisualDesigner.VDSeparator" Name="VDSeparator" DisplayName="VDSeparator" InheritanceModifier="Abstract" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDInternalUtility" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="c761d8da-76c8-4ae9-a268-8d81a7f9fd69" Description="" Name="VDHoriSeparator" DisplayName="Horizontal Separator" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDSeparator" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="733dc445-5f13-4eea-8922-2ac8229684e0" Description="" Name="TopMargin" DisplayName="Top Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ee89b0a4-c89c-4397-8c71-bfb58a862f2b" Description="" Name="BottomMargin" DisplayName="Bottom Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a4cc57f6-51b1-40b2-b2bf-18ca9e2e5a42" Description="Description for MVCVisualDesigner.VDHoriSeparator.Default Y" Name="DefaultY" DisplayName="Default Y" DefaultValue="-1">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="913509e8-33d0-462f-aa85-bd5f4148d3e7" Description="" Name="VDVertSeparator" DisplayName="Vertical Separator" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDSeparator" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="b5931904-4f5c-4409-8189-a7abfb03c28c" Description="" Name="LeftMargin" DisplayName="Left Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="89c67701-70d5-4090-8a5e-947b33f38e17" Description="" Name="RightMargin" DisplayName="Right Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7a122e6b-d488-4c5c-8623-84a6f94d473d" Description="Description for MVCVisualDesigner.VDVertSeparator.Default X" Name="DefaultX" DisplayName="Default X" DefaultValue="-1">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="e1d13ded-42d6-4a10-b240-74e54767ea36" Description="" Name="VDForm" DisplayName="Form" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="103d62c4-78cd-4e72-9346-a3f9dd2941af" Description="Specifies the name of a form" Name="Name" DisplayName="name" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="cb742391-b33e-4946-b1e6-88f6fd2c92b2" Description="Specifies where to send the form-data when a form is submitted" Name="Action" DisplayName="action" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6bede762-2d29-4de9-90b8-214471e1bebe" Description="Specifies the HTTP method to use when sending form-data" Name="Method" DisplayName="method" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_HTTPRequestMethod" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0047a667-f98d-46b8-b9bf-47c2d1c95ade" Description="Specifies where to display the response that is received after submitting the form" Name="Target" DisplayName="target" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_FormTarget" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d2dde7a1-4c92-4bad-bfb2-97f90fcc099a" Description="Specifies how the form-data should be encoded when submitting it to the server (only for method=&quot;post&quot;)" Name="EncType" DisplayName="enctype" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_FormEncType" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="d05ac9e5-6c3f-402b-a967-1e48ff769811" Description="Description for MVCVisualDesigner.VDSubmit" Name="VDSubmit" DisplayName="VDSubmit" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDInput" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="ba0a564c-ece1-4141-8024-9b50274b7e8a" Description="Description for MVCVisualDesigner.VDRadio" Name="VDRadio" DisplayName="VDRadio" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDInput" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="b70cd577-5d7d-42ce-bec7-50a936feb032" Description="Description for MVCVisualDesigner.VDCheckBox" Name="VDCheckBox" DisplayName="VDCheck Box" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDInput" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="e0dbe157-96a1-4519-9d74-082478bddf00" Description="" Name="VDSelect" DisplayName="Select" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="c3239d80-aecf-4608-a9d7-bc139fba1563" Description="Defines a name for the drop-down list" Name="Name" DisplayName="name" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1f17ad15-707c-4653-a778-8686df3bcf94" Description="Specifies that a drop-down list should be disabled" Name="Disabled" DisplayName="disabled" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="25d7186f-4e8e-4f04-bf4f-f126ec8c705e" Description=" Specifies that multiple options can be selected at once" Name="Multiple" DisplayName="multiple" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="55d51255-91d8-40cb-b4cc-51d277232dd8" Description="Defines the number of visible options in a drop-down list" Name="Size" DisplayName="size" Category="HTML Attribute">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDSelectOption" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>SelectHasOptions.Options</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="576f41c9-9810-4cad-bf99-ee63eccf6822" Description="" Name="VDInput" DisplayName="Input" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="1f32c526-411b-42b1-b3cc-0cf125a81036" Description="Specifies the name of an &lt;input&gt; element" Name="Name" DisplayName="name" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="57e39616-b2b8-40a2-9f5b-14e8661d3043" Description="Specifies the type &lt;input&gt; element to display" Name="Type" DisplayName="type" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_InputType" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="909eba16-a948-426d-b86b-3f287ca9e259" Description="Specifies the value of an &lt;input&gt; element" Name="Value" DisplayName="value" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e184679e-8ac6-4d73-b9c7-1022c63a54a8" Description="Specifies the maximum number of characters allowed in an &lt;input&gt; element" Name="MaxLength" DisplayName="maxlength" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3741f758-502a-4f14-a73b-d663f16583bb" Description="Specifies the types of files that the server accepts (only for type=&quot;file&quot;)" Name="Accept" DisplayName="accept" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a994bbc4-7d59-4917-aa81-ddcdfc04a08d" Description="Specifies an alternate text for images (only for type=&quot;image&quot;)" Name="Alt" DisplayName="alt" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="173cf5c2-e89c-4600-b37c-f7288c573586" Description="Specifies the width, in characters, of an &lt;input&gt; element" Name="Size" DisplayName="size" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3b058df9-e96e-4412-93e6-506aa022e255" Description="Specifies that an &lt;input&gt; element should be pre-selected when the page loads (for type=&quot;checkbox&quot; or type=&quot;radio&quot;)" Name="Checked" DisplayName="checked" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2a73c5e2-e71d-4b66-b77a-3768982d80fc" Description="Specifies that an &lt;input&gt; element should be disabled" Name="Disabled" DisplayName="disabled" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="7efdaa9f-896e-40b4-8028-706bb6d7b001" Description="" Name="VDSelectOption" DisplayName="Select Option" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="bbd20202-1e1b-4c95-97ff-650e7932b631" Description="Specifies the value to be sent to a server" Name="Value" DisplayName="value" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2283af80-b312-4ed9-94f2-a5e8dc84644d" Description="Specifies that an option should be pre-selected when the page loads" Name="Selected" DisplayName="selected" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7910839d-f88b-4fc5-8ff3-72898795f093" Description="Specifies a shorter label for an option" Name="Label" DisplayName="label" Category="HTML Attribute">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d8c29f2a-b3ab-4fbb-ad0d-1b973cded29f" Description="Specifies that an option should be disabled" Name="Disabled" DisplayName="disabled" Category="HTML Attribute">
          <Type>
            <DomainEnumerationMoniker Name="E_TripleState" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="340a4898-ada1-49d1-bb0c-6b43963ff357" Description="" Name="VDTab" DisplayName="Tab" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="3f8b9105-4256-41d7-9b71-105eb811de69" Description="" Name="VDTabHead" DisplayName="Tab Head" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="1a58f1d3-1905-42cb-9476-af21f2eef707" Description="" Name="TabTitle" DisplayName="Tab Title">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="00cba80b-0bdb-448e-8175-a56ba36ecec7" Description="" Name="VDTabBody" DisplayName="Tab Body" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="0a40e8a3-96af-49a5-92e6-778959d485f7" Description="Description for MVCVisualDesigner.VDInternalUtility" Name="VDInternalUtility" DisplayName="VDInternal Utility" InheritanceModifier="Abstract" Namespace="MVCVisualDesigner">
      <Notes>Used for internal usage, not listed on Toolbox, and not used by users directly</Notes>
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="4556e526-61ff-4c5b-a7b6-99a133648f37" Description="Description for MVCVisualDesigner.VDContainer" Name="VDContainer" DisplayName="VDContainer" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDInternalUtility" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="d9c712b6-610d-493c-ad0b-f2e02fc92694" Description="Description for MVCVisualDesigner.VDContainer.Tag" Name="Tag" DisplayName="Tag">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6b68bc5b-fd61-4cbf-838b-fd7464654bd9" Description="Description for MVCVisualDesigner.VDContainer.Has Left Anchor" Name="HasLeftAnchor" DisplayName="Has Left Anchor">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="efd20b66-92b7-471c-803e-870672239073" Description="Description for MVCVisualDesigner.VDContainer.Has Right Anchor" Name="HasRightAnchor" DisplayName="Has Right Anchor">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="27f7b64a-a432-42ec-a659-eba0b7ffcb47" Description="Description for MVCVisualDesigner.VDContainer.Has Top Anchor" Name="HasTopAnchor" DisplayName="Has Top Anchor">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="330e81b4-a966-457a-ba14-071895b025b6" Description="Description for MVCVisualDesigner.VDContainer.Has Bottom Anchor" Name="HasBottomAnchor" DisplayName="Has Bottom Anchor">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d993a2af-fea7-454a-892b-67fb5c383ac6" Description="Description for MVCVisualDesigner.VDContainer.Left Margin" Name="LeftMargin" DisplayName="Left Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d75571f7-2c7e-4243-9ebe-bf7c2bc64418" Description="Description for MVCVisualDesigner.VDContainer.Right Margin" Name="RightMargin" DisplayName="Right Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="759ee637-f274-4e6d-8c0d-578977e2f649" Description="Description for MVCVisualDesigner.VDContainer.Top Margin" Name="TopMargin" DisplayName="Top Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="23216f5e-de19-4563-8d7c-3ef3ecc35f3d" Description="Description for MVCVisualDesigner.VDContainer.Bottom Margin" Name="BottomMargin" DisplayName="Bottom Margin">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="80f528f7-1be6-49e2-9916-0c76bd52d4dc" Description="Description for MVCVisualDesigner.VDHoriContainer" Name="VDHoriContainer" DisplayName="Horizontal Container" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDContainer" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="c7c2b84a-9a5a-4e0d-b2cf-fe7e87991a15" Description="Description for MVCVisualDesigner.VDHoriContainer.Fixed Height" Name="FixedHeight" DisplayName="Fixed Height" DefaultValue="0">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5eec1f97-bb5a-4251-8334-8146cf522c8e" Description="Description for MVCVisualDesigner.VDVertContainer" Name="VDVertContainer" DisplayName="Vertical  Container" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDContainer" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="00e90a5e-d53a-4d9d-90ee-a4d07f23280c" Description="Description for MVCVisualDesigner.VDVertContainer.Fixed Width" Name="FixedWidth" DisplayName="Fixed Width" DefaultValue="0">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="446a5ca6-117e-4604-acca-a0ad19fdf6db" Description="" Name="VDTable" DisplayName="Table" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="73034a9e-3769-4dcc-bc16-36b52ba6a978" Description="Column count of table" Name="ColCount" DisplayName="Column Count" Category="Table">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4144beea-c44c-4cb5-b6eb-f11d455d9821" Description="Description for MVCVisualDesigner.VDFullFilledContainer" Name="VDFullFilledContainer" DisplayName="Full Filled Container" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDContainer" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="3a6364ee-f9d1-41c2-894b-2f48613eeb0b" Description="" Name="VDTableColTitle" DisplayName="Table Column Title" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="c38e06b6-dae8-4fda-95bd-1c5d775d5b1a" Description="Description for MVCVisualDesigner.VDTableColTitle.Index" Name="Index" DisplayName="Index">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8dd89d6b-e16f-44e2-bdd6-2f5f1678586d" Description="" Name="VDTableRowTitle" DisplayName="Table Row Title" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="4bdc91e9-7bff-4337-9fa4-202ca1dd4e0e" Description="" Name="Index" DisplayName="Index" Category="Table" IsUIReadOnly="true">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="0b864f89-2761-4419-8b16-d1f9493d20cb" Description="" Name="VDTableRow" DisplayName="Table Row" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="1697ed28-542e-4b22-ab88-ed829dce1298" Description="Row count" Name="RowCount" DisplayName="Row Count" DefaultValue="0" Category="Table">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9cc9f008-7928-418d-87bb-279662e51353" Description="Column count" Name="ColCount" DisplayName="Col Count" Category="Table" IsUIReadOnly="true">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="877d78be-e9eb-4d6d-81a7-ed797581a25b" Description="Description for MVCVisualDesigner.VDTableRow.Row Type" Name="RowType" DisplayName="Row Type" DefaultValue="BodyRow">
          <Type>
            <DomainEnumerationMoniker Name="E_RowType" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="a309dce3-c14b-443c-b18f-17901f6892e3" Description="" Name="VDTableCell" DisplayName="Table Cell" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="a7e3e2f3-c746-47ac-8c9a-2b714caebe7b" Description="" Name="Col" DisplayName="Column" Category="Table" IsUIReadOnly="true">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="20f0d7c0-723a-4bdd-9fcf-8291e2371e72" Description="" Name="Row" DisplayName="Row" Category="Table" IsUIReadOnly="true">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="54089c2c-ccdd-4afe-8597-6025780bd931" Description="" Name="ColSpan" DisplayName="Column Span" DefaultValue="1" Category="Table" IsBrowsable="false">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9dced70f-3124-4f8c-934a-19b7b154edfa" Description="" Name="RowSpan" DisplayName="Row Span" DefaultValue="1" Category="Table" IsBrowsable="false">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="35e864fe-69ac-4e40-92f3-b2b4dacdce46" Description="" Name="VDTableRowWrapper" DisplayName="Table Rows" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDTable" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="d2eb75f8-be1c-4160-9469-a4990c0519ad" Description="" Name="VDHTMLTag" DisplayName="HTML Tag" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="10769bdc-e4a4-46ea-88ac-c0d4431728d9" Description="" Name="TagName" DisplayName="Tag Name" DefaultValue="div" Category="HTML Tag">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7241768d-6738-414c-bcf1-4e6fbd1ecfdf" Description="" Name="TagText" DisplayName="Tag Text" Category="HTML Tag">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d683ec97-5e2f-4201-8da8-3a829fd7b33e" Description="" Name="_OpenTagStr" DisplayName="_ Open Tag Str" Kind="CustomStorage" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="66b4e205-23d6-495b-b430-53c80a1e19d6" Description="" Name="_CloseTagStr" DisplayName="_ Close Tag Str" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dce3e4ad-8eb7-4df2-b6ef-f04c88dc6f6b" Description="" Name="_IsCloseTagVisibleInHeader" DisplayName="_ Is Close Tag Visible In Header" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="01bceba4-4074-440a-8a32-702e30d5935b" Description="" Name="_IsCloseTagVisibleInFooter" DisplayName="_ Is Close Tag Visible In Footer" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2e3f8058-1111-4f82-9ea6-b9affe7c4771" Description="" Name="_HasTagText" DisplayName="_ Has Tag Text" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="842eea95-9ac3-4745-973e-92fa0fd8a2e4" Description="" Name="VDCodeSnippet" DisplayName="Code Snippet" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <CustomTypeDescriptor>
        <DomainTypeDescriptor CustomCoded="true" />
      </CustomTypeDescriptor>
      <Properties>
        <DomainProperty Id="2e85ad6d-23e5-4f75-8210-7b6049949cc4" Description="Code defined in this widget or defined in referenced widget" Name="CodeSnippet2" DisplayName="Code Snippet" Kind="CustomStorage" Category="Coding">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c55d7868-ea01-4004-bd7d-1374763a6814" Description="" Name="_PreCodeSnippet" DisplayName=" Pre Code Snippet" Kind="CustomStorage" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="48891ffb-c52a-4f6a-9cee-b25ddf981cfe" Description="" Name="_PostCodeSnippet" DisplayName="Post Code Snippet" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="179cf308-be95-4a85-84fd-a75aed94bf71" Description="" Name="_HasPostCodeSnippet" DisplayName="_ Has Post Code Snippet" Kind="Calculated" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f522b877-6553-4b25-b4c1-b838830c4ce4" Description="Selected widget in the linked widget list" Name="ActiveLinkedWidgetName" DisplayName="Active Linked Widget" Kind="CustomStorage" Category="Coding">
          <Attributes>
            <ClrAttribute Name="System.ComponentModel.Editor">
              <Parameters>
                <AttributeParameter Value="typeof(ActiveLinkedWidgetNamePropEditor)" />
                <AttributeParameter Value="typeof(System.Drawing.Design.UITypeEditor)" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ecd24f9d-fb26-400c-954f-a71f5f77fd8c" Description="" Name="_Mode" DisplayName="_ Mode" Kind="Calculated" Category="Internal States">
          <Type>
            <DomainEnumerationMoniker Name="E_CodeSnippetMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="VDCodeSnippetBody" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CodeSnippetHasBody.Body</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="c021c724-d776-45f9-8dce-7825cec0dc29" Description="" Name="VDCodeSnippetBody" DisplayName="Code Snippet Body" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="d3dba629-0d5a-4609-98d8-daa4521deb45" Description="Description for MVCVisualDesigner.VDText" Name="VDText" DisplayName="VDText" Namespace="MVCVisualDesigner">
      <BaseClass>
        <DomainClassMoniker Name="VDWidget" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="4ad5dcd1-d6af-41fc-9bc7-58128317a4de" Description="" Name="Content" DisplayName="Content" Category="Definition">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f4ade2f6-2c83-48ff-bc73-ca4ecb15b35e" Description="" Name="Encoding" DisplayName="Encoding" Category="Definition">
          <Notes>TODO: add URLEncode(...) etc</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="8491408d-7160-4a47-9979-e0dab01d52b3" Description="Description for MVCVisualDesigner.WidgetHasChildren" Name="WidgetHasChildren" DisplayName="Widget Has Children" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <Source>
        <DomainRole Id="223507db-ce6c-4fe1-87aa-33d1adcb6555" Description="Description for MVCVisualDesigner.WidgetHasChildren.SourceVDWidget" Name="SourceVDWidget" DisplayName="Source VDWidget" PropertyName="Children" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Children">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c0aff184-c06b-475e-b78b-0854c9f15199" Description="Description for MVCVisualDesigner.WidgetHasChildren.TargetVDWidget" Name="TargetVDWidget" DisplayName="Target VDWidget" PropertyName="Parent" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Parent">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c2d0e6ff-0c0d-4a7d-8ca7-94d2bc2a088c" Description="Description for MVCVisualDesigner.WidgetHasTitle" Name="WidgetHasTitle" DisplayName="Widget Has Title" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <Source>
        <DomainRole Id="bdb03725-26b0-460b-92ad-c74d0e68d858" Description="Description for MVCVisualDesigner.WidgetHasTitle.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="Title" Multiplicity="ZeroOne" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Title">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3e997446-1b1d-4306-b258-b373deba3ada" Description="Description for MVCVisualDesigner.WidgetHasTitle.VDWidgetTitle" Name="VDWidgetTitle" DisplayName="VDWidget Title" PropertyName="Widget" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidgetTitle" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="60c511f9-a11f-40e7-9cab-542425f90fe3" Description="Description for MVCVisualDesigner.SectionHasHead" Name="SectionHasHead" DisplayName="Section Has Head" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="WidgetHasChildren" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="b5841c7c-52eb-4e63-8d04-5826d66991fb" Description="Description for MVCVisualDesigner.SectionHasHead.VDSection" Name="VDSection" DisplayName="VDSection" PropertyName="Head" Multiplicity="ZeroOne" PropagatesDelete="true" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Head">
          <RolePlayer>
            <DomainClassMoniker Name="VDSection" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3d2e888c-20b9-4c74-83ba-13231124b279" Description="Description for MVCVisualDesigner.SectionHasHead.VDSectionHead" Name="VDSectionHead" DisplayName="VDSection Head" PropertyName="Section" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Section">
          <RolePlayer>
            <DomainClassMoniker Name="VDSectionHead" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="2003e7b1-fa16-47a1-99a1-61d79247a057" Description="Description for MVCVisualDesigner.SectionHasBody" Name="SectionHasBody" DisplayName="Section Has Body" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="WidgetHasChildren" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="022e1990-52a9-48bc-ab8a-9c7bb72f9367" Description="Description for MVCVisualDesigner.SectionHasBody.VDSection" Name="VDSection" DisplayName="VDSection" PropertyName="Body" Multiplicity="ZeroOne" PropagatesDelete="true" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Body">
          <RolePlayer>
            <DomainClassMoniker Name="VDSection" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="988773ea-649c-4f8d-b7e2-05a5c4f55edd" Description="Description for MVCVisualDesigner.SectionHasBody.VDSectionBody" Name="VDSectionBody" DisplayName="VDSection Body" PropertyName="Section" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Section">
          <RolePlayer>
            <DomainClassMoniker Name="VDSectionBody" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ab5a4903-7e60-4c67-a237-5f61f0654e46" Description="Description for MVCVisualDesigner.SeparatorRefersTopWidget" Name="SeparatorRefersTopWidget" DisplayName="Separator Refers Top Widget" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="3d142754-17c4-448b-aaa3-261fd13e25c5" Description="Description for MVCVisualDesigner.SeparatorRefersTopWidget.VDHoriSeparator" Name="VDHoriSeparator" DisplayName="VDHori Separator" PropertyName="TopWidget" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Top Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDHoriSeparator" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="968b8f56-745c-4610-b37e-0e34a8060fff" Description="Description for MVCVisualDesigner.SeparatorRefersTopWidget.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="BottomSeparator" Multiplicity="ZeroOne" PropertyDisplayName="Bottom Separator">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="5fa5d01c-b9ce-45dc-8a43-60139b0e0c7b" Description="Description for MVCVisualDesigner.SeparatorRefersBottomWidget" Name="SeparatorRefersBottomWidget" DisplayName="Separator Refers Bottom Widget" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="0411c536-af87-467a-b66a-173791f724d0" Description="Description for MVCVisualDesigner.SeparatorRefersBottomWidget.VDHoriSeparator" Name="VDHoriSeparator" DisplayName="VDHori Separator" PropertyName="BottomWidget" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Bottom Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDHoriSeparator" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6ba23e40-16ee-47d5-a195-ee3939bbcacd" Description="Description for MVCVisualDesigner.SeparatorRefersBottomWidget.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="TopSeparator" Multiplicity="ZeroOne" PropertyDisplayName="Top Separator">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="2d6b812d-fc42-4b4c-99c5-a66e10169b1a" Description="Description for MVCVisualDesigner.SeparatorRefersLeftWidget" Name="SeparatorRefersLeftWidget" DisplayName="Separator Refers Left Widget" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="975d491c-2e71-4131-bf82-a4dcc85fc012" Description="Description for MVCVisualDesigner.SeparatorRefersLeftWidget.VDVertSeparator" Name="VDVertSeparator" DisplayName="VDVert Separator" PropertyName="LeftWidget" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Left Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDVertSeparator" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="16ddd36d-f8d5-4e77-9a9f-0e6a2a54cbce" Description="Description for MVCVisualDesigner.SeparatorRefersLeftWidget.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="RightSeparator" Multiplicity="ZeroOne" PropertyDisplayName="Right Separator">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f47ff5c7-3744-4c53-af5c-c48cc1f348bc" Description="Description for MVCVisualDesigner.SeparatorRefersRightWidget" Name="SeparatorRefersRightWidget" DisplayName="Separator Refers Right Widget" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="18c0cf98-a4df-48da-bb8a-4735141d8d42" Description="Description for MVCVisualDesigner.SeparatorRefersRightWidget.VDVertSeparator" Name="VDVertSeparator" DisplayName="VDVert Separator" PropertyName="RightWidget" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Right Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDVertSeparator" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="81a7b620-7815-4c64-b004-154cb2f1804d" Description="Description for MVCVisualDesigner.SeparatorRefersRightWidget.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="LeftSeparator" Multiplicity="ZeroOne" PropertyDisplayName="Left Separator">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c6907723-7e30-45fa-9253-ecee54066a5a" Description="Description for MVCVisualDesigner.SelectHasOptions" Name="SelectHasOptions" DisplayName="Select Has Options" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="WidgetHasChildren" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="e019cb3f-1dc3-41a0-b942-cf659ef498cc" Description="Description for MVCVisualDesigner.SelectHasOptions.VDSelect" Name="VDSelect" DisplayName="VDSelect" PropertyName="Options" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Options">
          <RolePlayer>
            <DomainClassMoniker Name="VDSelect" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0e559dc2-8811-4db7-bd54-fd23feda8009" Description="Description for MVCVisualDesigner.SelectHasOptions.VDSelectOption" Name="VDSelectOption" DisplayName="VDSelect Option" PropertyName="Select" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Select">
          <RolePlayer>
            <DomainClassMoniker Name="VDSelectOption" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="4b2fbdee-3fdd-4820-92de-21ef54305338" Description="Description for MVCVisualDesigner.HeadLinksToBody" Name="HeadLinksToBody" DisplayName="Head Links To Body" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="b6d6a6c0-2b49-4156-81fe-f4992eb13373" Description="Description for MVCVisualDesigner.HeadLinksToBody.VDTabHead" Name="VDTabHead" DisplayName="VDTab Head" PropertyName="Body" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Body">
          <RolePlayer>
            <DomainClassMoniker Name="VDTabHead" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b77b31c5-ecc3-4ea7-8792-760caabb6d58" Description="" Name="VDTabBody" DisplayName="Tab Body" PropertyName="Head" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Head">
          <RolePlayer>
            <DomainClassMoniker Name="VDTabBody" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="56752e05-f310-4846-92c2-e53e80b2302f" Description="Description for MVCVisualDesigner.TabHasActiveHead" Name="TabHasActiveHead" DisplayName="Tab Has Active Head" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="f64854c2-8069-4bb9-985e-cec212283f71" Description="Description for MVCVisualDesigner.TabHasActiveHead.VDTab" Name="VDTab" DisplayName="VDTab" PropertyName="ActiveHead" Multiplicity="ZeroOne" PropertyDisplayName="Active Head">
          <RolePlayer>
            <DomainClassMoniker Name="VDTab" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e09d78e2-8b04-4e25-b80a-8c4dfa75df0d" Description="Description for MVCVisualDesigner.TabHasActiveHead.VDTabHead" Name="VDTabHead" DisplayName="VDTab Head" PropertyName="Tab" Multiplicity="One" IsPropertyGenerator="false" PropertyDisplayName="Tab">
          <RolePlayer>
            <DomainClassMoniker Name="VDTabHead" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="00a0d878-6987-4a37-b1d3-219b9f6bceb0" Description="Description for MVCVisualDesigner.ContainerHasTopSibling" Name="ContainerHasTopSibling" DisplayName="Container Has Top Sibling" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="1b188c6c-4171-4814-9f61-f7913461b22c" Description="Description for MVCVisualDesigner.ContainerHasTopSibling.VDContainer" Name="VDContainer" DisplayName="VDContainer" PropertyName="TopSibling" Multiplicity="ZeroOne" PropertyDisplayName="Top Sibling">
          <RolePlayer>
            <DomainClassMoniker Name="VDContainer" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c9c2063d-e475-4374-a20f-ea41785de8fe" Description="Description for MVCVisualDesigner.ContainerHasTopSibling.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="VDContainer" Multiplicity="ZeroOne" IsPropertyGenerator="false" PropertyDisplayName="VDContainer">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e75eb47c-4365-460d-8bdb-b3eb2d3f8f24" Description="Description for MVCVisualDesigner.ContainerHasRightSibling" Name="ContainerHasRightSibling" DisplayName="Container Has Right Sibling" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="a16dcadc-1adb-442e-9e36-e31f35550f79" Description="Description for MVCVisualDesigner.ContainerHasRightSibling.VDContainer" Name="VDContainer" DisplayName="VDContainer" PropertyName="RightSibling" Multiplicity="ZeroOne" PropertyDisplayName="Right Sibling">
          <RolePlayer>
            <DomainClassMoniker Name="VDContainer" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cda9dd91-5d2f-4628-bacf-df437b47aa94" Description="Description for MVCVisualDesigner.ContainerHasRightSibling.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="VDContainer" Multiplicity="ZeroOne" IsPropertyGenerator="false" PropertyDisplayName="VDContainer">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f7c7c9ab-23db-4a9a-9e5c-a1646aabbc17" Description="Description for MVCVisualDesigner.ContainerHasBottomSibling" Name="ContainerHasBottomSibling" DisplayName="Container Has Bottom Sibling" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="1b9610e5-64d8-4b1a-9a15-c32d19e9587e" Description="Description for MVCVisualDesigner.ContainerHasBottomSibling.VDContainer" Name="VDContainer" DisplayName="VDContainer" PropertyName="BottomSibling" Multiplicity="ZeroOne" PropertyDisplayName="Bottom Sibling">
          <RolePlayer>
            <DomainClassMoniker Name="VDContainer" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fb2ffb25-e094-4745-a317-ebfd4a60b4c4" Description="Description for MVCVisualDesigner.ContainerHasBottomSibling.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="VDContainer" Multiplicity="ZeroOne" IsPropertyGenerator="false" PropertyDisplayName="VDContainer">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9d82c810-0c90-4035-9ace-573fc5454799" Description="Description for MVCVisualDesigner.ContainerHasLeftSibling" Name="ContainerHasLeftSibling" DisplayName="Container Has Left Sibling" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="8b86ca4e-9b2c-4b40-ac7f-e2a0aa3c2b89" Description="Description for MVCVisualDesigner.ContainerHasLeftSibling.VDContainer" Name="VDContainer" DisplayName="VDContainer" PropertyName="LeftSibling" Multiplicity="ZeroOne" PropertyDisplayName="Left Sibling">
          <RolePlayer>
            <DomainClassMoniker Name="VDContainer" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fed608aa-abb8-42b5-805e-0b00eec90a0f" Description="Description for MVCVisualDesigner.ContainerHasLeftSibling.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="VDContainer" Multiplicity="ZeroOne" IsPropertyGenerator="false" PropertyDisplayName="VDContainer">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="bf90afdf-16e8-4120-87b4-ca04c594f434" Description="Description for MVCVisualDesigner.EditCodeSnippetOn" Name="EditCodeSnippetOn" DisplayName="Edit Code Snippet On" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="9d6c9153-59cc-4dbc-9a49-c4ae94dcb9c2" Description="Description for MVCVisualDesigner.EditCodeSnippetOn.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="CodeSnippetEditor" Multiplicity="ZeroOne" Category="Coding" PropertyDisplayName="Code Snippet Editor">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d9431403-ca29-4f32-8e71-7862ba356f63" Description="Description for MVCVisualDesigner.EditCodeSnippetOn.VDCodeSnippet" Name="VDCodeSnippet" DisplayName="VDCode Snippet" PropertyName="LinkedWidgets" IsPropertyBrowsable="false" PropertyDisplayName="Linked Widgets">
          <RolePlayer>
            <DomainClassMoniker Name="VDCodeSnippet" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="37c3daf4-d6c0-4bf6-a50f-ccacec37d015" Description="Description for MVCVisualDesigner.CodeSnippetHasActiveLinkedWidget" Name="CodeSnippetHasActiveLinkedWidget" DisplayName="Code Snippet Has Active Linked Widget" Namespace="MVCVisualDesigner">
      <Source>
        <DomainRole Id="eaaebd07-171e-40a7-afab-03ddd9f6e78e" Description="Description for MVCVisualDesigner.CodeSnippetHasActiveLinkedWidget.VDCodeSnippet" Name="VDCodeSnippet" DisplayName="VDCode Snippet" PropertyName="ActiveLinkedWidget" Multiplicity="ZeroOne" PropertyDisplayName="Active Linked Widget">
          <RolePlayer>
            <DomainClassMoniker Name="VDCodeSnippet" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="850225a3-4607-479b-b1c4-961f1bff668f" Description="Description for MVCVisualDesigner.CodeSnippetHasActiveLinkedWidget.VDWidget" Name="VDWidget" DisplayName="VDWidget" PropertyName="VDCodeSnippet" Multiplicity="ZeroOne" IsPropertyGenerator="false" IsPropertyBrowsable="false" PropertyDisplayName="VDCode Snippet">
          <RolePlayer>
            <DomainClassMoniker Name="VDWidget" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="69b03de7-c4f1-49d5-b58a-972c68604147" Description="Description for MVCVisualDesigner.CodeSnippetHasBody" Name="CodeSnippetHasBody" DisplayName="Code Snippet Has Body" Namespace="MVCVisualDesigner" IsEmbedding="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="WidgetHasChildren" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="38ebbc96-cdc2-477b-9544-5b1d4dd94ca2" Description="Description for MVCVisualDesigner.CodeSnippetHasBody.VDCodeSnippet" Name="VDCodeSnippet" DisplayName="VDCode Snippet" PropertyName="Body" Multiplicity="ZeroOne" PropagatesDelete="true" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Body">
          <RolePlayer>
            <DomainClassMoniker Name="VDCodeSnippet" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="38a0351d-de8a-4c9f-926e-fb7160247695" Description="Description for MVCVisualDesigner.CodeSnippetHasBody.VDCodeSnippetBody" Name="VDCodeSnippetBody" DisplayName="VDCode Snippet Body" PropertyName="ParentCodeSnippet" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Parent Code Snippet">
          <RolePlayer>
            <DomainClassMoniker Name="VDCodeSnippetBody" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <ExternalType Name="Image" Namespace="System.Drawing" />
    <DomainEnumeration Name="E_HTTPRequestMethod" Namespace="MVCVisualDesigner" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Get" Value="0" />
        <EnumerationLiteral Description="" Name="Post" Value="1" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="E_FormTarget" Namespace="MVCVisualDesigner" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="_blank" Value="1" />
        <EnumerationLiteral Description="" Name="_self" Value="3" />
        <EnumerationLiteral Description="" Name="_parent" Value="2" />
        <EnumerationLiteral Description="" Name="_top" Value="4" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_FormTarget.NotSpecified" Name="NotSpecified" Value="0" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="E_FormEncType" Namespace="MVCVisualDesigner" Description="">
      <Literals>
        <EnumerationLiteral Description="application/x-www-form-urlencoded" Name="application_x_www_form_urlencoded" Value="1" />
        <EnumerationLiteral Description="multipart/form-data" Name="multipart_form_data" Value="2" />
        <EnumerationLiteral Description="text/plain" Name="text_plain" Value="3" />
        <EnumerationLiteral Description="" Name="NotSpecified" Value="0" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="E_InputType" Namespace="MVCVisualDesigner" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="button" Value="" />
        <EnumerationLiteral Description="" Name="checkbox" Value="" />
        <EnumerationLiteral Description="" Name="color" Value="" />
        <EnumerationLiteral Description="" Name="date" Value="" />
        <EnumerationLiteral Description="" Name="file" Value="" />
        <EnumerationLiteral Description="" Name="image" Value="" />
        <EnumerationLiteral Description="" Name="month" Value="" />
        <EnumerationLiteral Description="" Name="number" Value="" />
        <EnumerationLiteral Description="" Name="password" Value="" />
        <EnumerationLiteral Description="" Name="radio" Value="" />
        <EnumerationLiteral Description="" Name="range" Value="" />
        <EnumerationLiteral Description="" Name="reset" Value="" />
        <EnumerationLiteral Description="" Name="datetime" Value="" />
        <EnumerationLiteral Description="datetime-local" Name="datetime_local" Value="" />
        <EnumerationLiteral Description="" Name="email" Value="" />
        <EnumerationLiteral Description="" Name="hidden" Value="" />
        <EnumerationLiteral Description="" Name="search" Value="" />
        <EnumerationLiteral Description="" Name="submit" Value="" />
        <EnumerationLiteral Description="" Name="text" Value="" />
        <EnumerationLiteral Description="" Name="time" Value="" />
        <EnumerationLiteral Description="" Name="tel" Value="" />
        <EnumerationLiteral Description="" Name="url" Value="" />
        <EnumerationLiteral Description="" Name="week" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="E_TripleState" Namespace="MVCVisualDesigner" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="TRUE" Value="2" />
        <EnumerationLiteral Description="" Name="FALSE" Value="1" />
        <EnumerationLiteral Description="" Name="NONE" Value="0" />
      </Literals>
    </DomainEnumeration>
    <ExternalType Name="Dictionary&lt;System.String, System.String&gt;" Namespace="System.Collections.Generic" />
    <ExternalType Name="List&lt;MVCVisualDesigner.HTMLAttribute&gt;" Namespace="System.Collections.Generic" />
    <DomainEnumeration Name="E_CodeSnippetMode" Namespace="MVCVisualDesigner" IsFlags="true" Description="Description for MVCVisualDesigner.E_CodeSnippetMode">
      <Literals>
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_CodeSnippetMode.Definition" Name="Definition" Value="8" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_CodeSnippetMode.Reference_Has_ActiveLinkedWidget" Name="Reference_Has_ActiveLinkedWidget" Value="5" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_CodeSnippetMode.Reference_No_ActiveLinkedWidget" Name="Reference_No_ActiveLinkedWidget" Value="6" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_CodeSnippetMode.Reference" Name="Reference" Value="4" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="E_RowType" Namespace="MVCVisualDesigner" Description="Description for MVCVisualDesigner.E_RowType">
      <Literals>
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_RowType.HeadRow" Name="HeadRow" Value="" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_RowType.FootRow" Name="FootRow" Value="" />
        <EnumerationLiteral Description="Description for MVCVisualDesigner.E_RowType.BodyRow" Name="BodyRow" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="e3f0af00-12a6-4223-861d-180f9ed7f7c3" Description="Description for MVCVisualDesigner.VDWidgetShape" Name="VDWidgetShape" DisplayName="VDWidget Shape" InheritanceModifier="Abstract" Namespace="MVCVisualDesigner" FixedTooltipText="VDWidget Shape" InitialHeight="1" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="58f89d0b-35cb-4f92-aecd-348184bff87c" Description="" Name="disabled" DisplayName="Disabled" Kind="CustomStorage" Category="Internal States" GetterAccessModifier="FamilyOrAssembly" SetterAccessModifier="FamilyOrAssembly">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d974e6e0-adbc-4b2c-bc4d-cce5d6d87290" Description="" Name="isPinned" DisplayName="Is Pinned" Category="Internal States" GetterAccessModifier="FamilyOrAssembly" SetterAccessModifier="FamilyOrAssembly">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="29d8d234-51c6-433f-881f-b5b9b722ad5a" Description="" Name="titleText" DisplayName="Title Text" Kind="Calculated" Category="Internal States" GetterAccessModifier="FamilyOrAssembly" SetterAccessModifier="FamilyOrAssembly">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dbf4b4ff-482e-4779-b81a-4107eecf2d05" Description="" Name="titleIcon" DisplayName="Title Icon" Kind="Calculated" Category="Internal States" GetterAccessModifier="FamilyOrAssembly" SetterAccessModifier="FamilyOrAssembly">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="91f2119d-4c85-4c5e-a912-0203903aae28" Description="" Name="relayoutChildren" DisplayName="Relayout Children" Category="Internal States" IsBrowsable="false">
          <Notes>trigger a rule to relayout child shapes (trigger children's bounds rules)</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7663b994-2374-423c-a603-31c4fefb1525" Description="Additional title icon 0" Name="titleIcon0" DisplayName="Title Icon0" Kind="Calculated" Category="Internal States">
          <Notes>Additional title icon 0</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6aa48c0e-b0ed-4ac8-8659-acf47b580910" Description="Additional title icon 1" Name="titleIcon1" DisplayName="Title Icon1" Kind="Calculated" Category="Internal States">
          <Notes>Additional title icon 1</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5a60bdaf-4e7e-40e5-8a45-c5b4b1043ff4" Description="Additional title icon 2" Name="titleIcon2" DisplayName="Title Icon2" Kind="Calculated" Category="Internal States">
          <Notes>Additional title icon 2</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="68110094-f002-4c9a-84ea-1b7303f4e04e" Description="Additional title icon 3" Name="titleIcon3" DisplayName="Title Icon3" Kind="Calculated" Category="Internal States">
          <Notes>Additional title icon 3</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9afb2bd4-9248-459b-a586-6b65197fa283" Description="Additional title icon 4" Name="titleIcon4" DisplayName="Title Icon4" Kind="Calculated" Category="Internal States" IsBrowsable="false">
          <Notes>Additional title icon 4</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Image" />
          </Type>
        </DomainProperty>
      </Properties>
    </GeometryShape>
    <GeometryShape Id="4842b8a8-4cb9-429d-ad01-a6d400e0676b" Description="" Name="VDSectionShape" DisplayName="VDSection Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDSection Shape" InitialWidth="5" InitialHeight="3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <Port Id="407d285a-e203-4917-a395-730505e148c5" Description="" Name="VDWidgetTitlePort" DisplayName="Widget Title Port" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="Widget Title Port" TextColor="White" FillColor="DarkBlue" OutlineColor="DarkBlue" InitialWidth="1" InitialHeight="0.18" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle" />
    <GeometryShape Id="36e435cc-7626-4bb3-a4aa-b529b7cdfea4" Description="" Name="VDSectionHeadShape" DisplayName="VDSection Head Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDSection Head Shape" FillColor="SkyBlue" OutlineColor="Transparent" InitialWidth="5" InitialHeight="0.3" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="498d7617-e998-4ceb-9cc7-257e76f1d134" Description="" Name="VDSectionBodyShape" DisplayName="VDSection Body Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDSection Body Shape" FillColor="Gainsboro" OutlineColor="Transparent" InitialWidth="5" InitialHeight="2.7" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="b44e3be4-49b9-4846-9947-9cb59c525a31" Description="" Name="VDHoriSeparatorShape" DisplayName="Horizontal Separator Shape" Namespace="MVCVisualDesigner" FixedTooltipText="Horizontal Separator Shape" FillColor="DarkGray" OutlineColor="Transparent" InitialHeight="0.05" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="07c13f52-86d8-4883-830a-821b16c4bf78" Description="" Name="VDVertSeparatorShape" DisplayName="Vertical Separator Shape" Namespace="MVCVisualDesigner" FixedTooltipText="Vertical Separator Shape" FillColor="DarkGray" OutlineColor="Transparent" InitialWidth="0.05" InitialHeight="1" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="a08a5644-3f25-48f8-8d7d-fda0c5a7e373" Description="" Name="VDFormShape" DisplayName="Form" Namespace="MVCVisualDesigner" FixedTooltipText="Form" FillColor="WhiteSmoke" InitialWidth="3.5" InitialHeight="2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="0a3b9ee6-7997-482f-83ee-ad395df76b45" Description="" Name="VDInputShape" DisplayName="Input" Namespace="MVCVisualDesigner" FixedTooltipText="Input" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="77418c02-9ec5-41a0-9d58-6b1e30010201" Description="" Name="VDSubmitShape" DisplayName="Submit" Namespace="MVCVisualDesigner" FixedTooltipText="Submit" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="d80b71df-4097-4d85-9525-e7cbc392ec41" Description="" Name="VDRadioShape" DisplayName="Radio" Namespace="MVCVisualDesigner" FixedTooltipText="Radio" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="9813e2e1-3da9-4c54-89ca-cbf64c57bf2a" Description="" Name="VDCheckBoxShape" DisplayName="Check Box" Namespace="MVCVisualDesigner" FixedTooltipText="Check Box" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="a79136a8-1983-406a-87d7-faa94cdcd233" Description="" Name="VDSelectShape" DisplayName="Select" Namespace="MVCVisualDesigner" FixedTooltipText="Select" InitialHeight="1" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="f923f0b5-a39f-4a9a-94fc-2f4d373abacc" Description="" Name="VDSelectOptionShape" DisplayName="Select Option" Namespace="MVCVisualDesigner" FixedTooltipText="Select Option" InitialWidth="1.2" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="b597256a-1a2b-4816-912e-a69f2c2f8aa8" Description="" Name="VDTabShape" DisplayName="Tab" Namespace="MVCVisualDesigner" FixedTooltipText="" InitialWidth="5" InitialHeight="3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="d08c9444-73e2-47ae-93e3-0b6c2a59765b" Description="" Name="VDTabHeadShape" DisplayName="Tab Head" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="" InitialHeight="0.3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
      <Properties>
        <DomainProperty Id="3dfb9d57-a9b7-409f-9268-18ea43a018bc" Description="Description for MVCVisualDesigner.VDTabHeadShape.Is Active Tab" Name="isActiveTab" DisplayName="Is Active Tab" Category="Internal States">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </GeometryShape>
    <GeometryShape Id="737b8598-0d13-407e-bcf4-8b369752adbf" Description="" Name="VDTabBodyShape" DisplayName="Tab Body" Namespace="MVCVisualDesigner" FixedTooltipText="" OutlineColor="Transparent" InitialWidth="5" InitialHeight="2.7" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="bce84a85-292d-46e2-b0ad-4e2a5c9e5e20" Description="Description for MVCVisualDesigner.VDHoriContainerShape" Name="VDHoriContainerShape" DisplayName="VDHori Container Shape" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="VDHori Container Shape" TextColor="LightGray" FillColor="Gray" OutlineColor="Transparent" InitialHeight="1" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDContainerShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="f32fc824-9b8a-4785-ab9c-1204b7fe7aa7" Description="Description for MVCVisualDesigner.VDVertContainerShape" Name="VDVertContainerShape" DisplayName="VDVert Container Shape" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="VDVert Container Shape" TextColor="LightGray" FillColor="Gray" OutlineColor="Transparent" InitialHeight="1" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDContainerShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="a8e7d751-858a-45b8-b0d5-46aa4c3914a0" Description="Description for MVCVisualDesigner.VDContainerShape" Name="VDContainerShape" DisplayName="VDContainer Shape" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="VDContainer Shape" FillColor="Gray" OutlineColor="Transparent" InitialHeight="1" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
      <Properties>
        <DomainProperty Id="2b709425-7335-423a-99a2-ca4ecc8bb95a" Description="Description for MVCVisualDesigner.VDContainerShape.Is Tag Decorator Visible" Name="isTagDecoratorVisible" DisplayName="Is Tag Decorator Visible" Kind="Calculated" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TagDecorator" DisplayName="Tag" DefaultText="" FontStyle="Bold" FontSize="18" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="806cf407-c3ea-4911-a70d-b1e51f2b8f67" Description="Description for MVCVisualDesigner.VDTableShape" Name="VDTableShape" DisplayName="VDTable Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Shape" FillColor="Silver" InitialWidth="4" InitialHeight="3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="15c37d43-52f6-466e-9a25-96a892f25e70" Description="Description for MVCVisualDesigner.VDFullFilledContainerShape" Name="VDFullFilledContainerShape" DisplayName="VDFull Filled Container Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDFull Filled Container Shape" TextColor="LightGray" FillColor="Gray" OutlineColor="Transparent" InitialHeight="1" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDContainerShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="e1875ec2-c68a-4fe6-89ff-1c84492568d7" Description="Description for MVCVisualDesigner.VDTableColTitleShape" Name="VDTableColTitleShape" DisplayName="VDTable Col Title Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Col Title Shape" FillColor="DarkBlue" OutlineColor="White" InitialWidth="0.2" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="8aea2aa1-05e2-4eb1-94c8-0d2c41409c7b" Description="Description for MVCVisualDesigner.VDTableRowTitleShape" Name="VDTableRowTitleShape" DisplayName="VDTable Row Title Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Row Title Shape" FillColor="DarkBlue" OutlineColor="White" InitialWidth="0.2" InitialHeight="0.2" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="9785269d-3ecc-49dd-b93d-0775ca4383ed" Description="Description for MVCVisualDesigner.VDTableRowShape" Name="VDTableRowShape" DisplayName="VDTable Row Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Row Shape" FillColor="LightGray" OutlineColor="Transparent" InitialHeight="0.5" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="a53c8579-f624-4ce8-999f-3429d9013df2" Description="Description for MVCVisualDesigner.VDTableCellShape" Name="VDTableCellShape" DisplayName="VDTable Cell Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Cell Shape" OutlineColor="RoyalBlue" InitialHeight="1" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
      <Properties>
        <DomainProperty Id="68037fe6-76a2-4a11-bd68-9e48ad4cb728" Description="" Name="ColSpan" DisplayName="Column Span" Kind="CustomStorage" Category="Table">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e83956f9-5649-4dae-bfaa-85f6e06dc63c" Description="" Name="RowSpan" DisplayName="Row Span" Kind="CustomStorage" Category="Table">
          <Attributes>
            <ClrAttribute Name="System.CLSCompliant">
              <Parameters>
                <AttributeParameter Value="false" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
      </Properties>
    </GeometryShape>
    <GeometryShape Id="7c066626-676c-439b-bba4-cc8adb2d2c75" Description="Description for MVCVisualDesigner.VDTableRowWrapperShape" Name="VDTableRowWrapperShape" DisplayName="VDTable Row Wrapper Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDTable Row Wrapper Shape" FillColor="Silver" InitialWidth="4" InitialHeight="0.6" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDTableShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="8a6fe8e1-602e-4c0d-85b7-634f603b253f" Description="Description for MVCVisualDesigner.VDHTMLTagShape" Name="VDHTMLTagShape" DisplayName="VDHTMLTag Shape" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="VDHTMLTag Shape" InitialHeight="1" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="af958aed-29f3-42fc-a7b6-b58bfdf8d83e" Description="Description for MVCVisualDesigner.VDCodeSnippetShape" Name="VDCodeSnippetShape" DisplayName="VDCode Snippet Shape" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true" FixedTooltipText="VDCode Snippet Shape" InitialHeight="1" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="42a451f3-1690-4294-ba75-db6651885882" Description="Description for MVCVisualDesigner.VDCodeSnippetBodyShape" Name="VDCodeSnippetBodyShape" DisplayName="VDCode Snippet Body Shape" Namespace="MVCVisualDesigner" HasCustomConstructor="true" FixedTooltipText="VDCode Snippet Body Shape" FillColor="Transparent" OutlineColor="Transparent" InitialHeight="0.7" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="5aacc010-0fa7-4799-ac15-5bea4e5bb706" Description="Description for MVCVisualDesigner.VDTextShape" Name="VDTextShape" DisplayName="VDText Shape" Namespace="MVCVisualDesigner" FixedTooltipText="VDText Shape" TextColor="Navy" FillColor="Azure" OutlineColor="Transparent" InitialWidth="0.8" InitialHeight="0.2" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="VDWidgetShape" />
      </BaseGeometryShape>
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ContentDecorator" DisplayName="Content Decorator" DefaultText="ContentDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MVCVisualDesignerSerializationBehavior" Namespace="MVCVisualDesigner">
    <ClassData>
      <XmlClassData TypeName="VDDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDDiagramMoniker" ElementName="vDDiagram" MonikerTypeName="VDDiagramMoniker">
        <DiagramMoniker Name="VDDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="VDWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDWidgetMoniker" ElementName="vDWidget" MonikerTypeName="VDWidgetMoniker">
        <DomainClassMoniker Name="VDWidget" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="children">
            <DomainRelationshipMoniker Name="WidgetHasChildren" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="title">
            <DomainRelationshipMoniker Name="WidgetHasTitle" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="moreHTMLAttributes">
            <DomainPropertyMoniker Name="VDWidget/MoreHTMLAttributes" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="codeSnippet">
            <DomainPropertyMoniker Name="VDWidget/CodeSnippet" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="codeSnippetEditor">
            <DomainRelationshipMoniker Name="EditCodeSnippetOn" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="widgetName">
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDView" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDViewMoniker" ElementName="vDView" MonikerTypeName="VDViewMoniker">
        <DomainClassMoniker Name="VDView" />
      </XmlClassData>
      <XmlClassData TypeName="VDSection" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionMoniker" ElementName="vDSection" MonikerTypeName="VDSectionMoniker">
        <DomainClassMoniker Name="VDSection" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="head">
            <DomainRelationshipMoniker Name="SectionHasHead" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="body">
            <DomainRelationshipMoniker Name="SectionHasBody" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="WidgetHasChildren" MonikerAttributeName="" SerializeId="true" MonikerElementName="widgetHasChildrenMoniker" ElementName="widgetHasChildren" MonikerTypeName="WidgetHasChildrenMoniker">
        <DomainRelationshipMoniker Name="WidgetHasChildren" />
      </XmlClassData>
      <XmlClassData TypeName="VDWidgetShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDWidgetShapeMoniker" ElementName="vDWidgetShape" MonikerTypeName="VDWidgetShapeMoniker">
        <GeometryShapeMoniker Name="VDWidgetShape" />
        <ElementData>
          <XmlPropertyData XmlName="disabled">
            <DomainPropertyMoniker Name="VDWidgetShape/disabled" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="isPinned">
            <DomainPropertyMoniker Name="VDWidgetShape/isPinned" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleText" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleText" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="relayoutChildren">
            <DomainPropertyMoniker Name="VDWidgetShape/relayoutChildren" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon0" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon0" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon1" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon1" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon2" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon2" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon3" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon3" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titleIcon4" Representation="Ignore">
            <DomainPropertyMoniker Name="VDWidgetShape/titleIcon4" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDSectionShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionShapeMoniker" ElementName="vDSectionShape" MonikerTypeName="VDSectionShapeMoniker">
        <GeometryShapeMoniker Name="VDSectionShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDWidgetTitle" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDWidgetTitleMoniker" ElementName="vDWidgetTitle" MonikerTypeName="VDWidgetTitleMoniker">
        <DomainClassMoniker Name="VDWidgetTitle" />
      </XmlClassData>
      <XmlClassData TypeName="WidgetHasTitle" MonikerAttributeName="" SerializeId="true" MonikerElementName="widgetHasTitleMoniker" ElementName="widgetHasTitle" MonikerTypeName="WidgetHasTitleMoniker">
        <DomainRelationshipMoniker Name="WidgetHasTitle" />
      </XmlClassData>
      <XmlClassData TypeName="VDWidgetTitlePort" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDWidgetTitlePortMoniker" ElementName="vDWidgetTitlePort" MonikerTypeName="VDWidgetTitlePortMoniker">
        <PortMoniker Name="VDWidgetTitlePort" />
      </XmlClassData>
      <XmlClassData TypeName="VDSectionHead" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionHeadMoniker" ElementName="vDSectionHead" MonikerTypeName="VDSectionHeadMoniker">
        <DomainClassMoniker Name="VDSectionHead" />
      </XmlClassData>
      <XmlClassData TypeName="VDSectionBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionBodyMoniker" ElementName="vDSectionBody" MonikerTypeName="VDSectionBodyMoniker">
        <DomainClassMoniker Name="VDSectionBody" />
      </XmlClassData>
      <XmlClassData TypeName="SectionHasHead" MonikerAttributeName="" SerializeId="true" MonikerElementName="sectionHasHeadMoniker" ElementName="sectionHasHead" MonikerTypeName="SectionHasHeadMoniker">
        <DomainRelationshipMoniker Name="SectionHasHead" />
      </XmlClassData>
      <XmlClassData TypeName="SectionHasBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="sectionHasBodyMoniker" ElementName="sectionHasBody" MonikerTypeName="SectionHasBodyMoniker">
        <DomainRelationshipMoniker Name="SectionHasBody" />
      </XmlClassData>
      <XmlClassData TypeName="VDSectionHeadShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionHeadShapeMoniker" ElementName="vDSectionHeadShape" MonikerTypeName="VDSectionHeadShapeMoniker">
        <GeometryShapeMoniker Name="VDSectionHeadShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDSectionBodyShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSectionBodyShapeMoniker" ElementName="vDSectionBodyShape" MonikerTypeName="VDSectionBodyShapeMoniker">
        <GeometryShapeMoniker Name="VDSectionBodyShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDSeparator" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSeparatorMoniker" ElementName="vDSeparator" MonikerTypeName="VDSeparatorMoniker">
        <DomainClassMoniker Name="VDSeparator" />
      </XmlClassData>
      <XmlClassData TypeName="VDHoriSeparator" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHoriSeparatorMoniker" ElementName="vDHoriSeparator" MonikerTypeName="VDHoriSeparatorMoniker">
        <DomainClassMoniker Name="VDHoriSeparator" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="topWidget">
            <DomainRelationshipMoniker Name="SeparatorRefersTopWidget" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="bottomWidget">
            <DomainRelationshipMoniker Name="SeparatorRefersBottomWidget" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="topMargin">
            <DomainPropertyMoniker Name="VDHoriSeparator/TopMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="bottomMargin">
            <DomainPropertyMoniker Name="VDHoriSeparator/BottomMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="defaultY">
            <DomainPropertyMoniker Name="VDHoriSeparator/DefaultY" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDVertSeparator" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDVertSeparatorMoniker" ElementName="vDVertSeparator" MonikerTypeName="VDVertSeparatorMoniker">
        <DomainClassMoniker Name="VDVertSeparator" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="leftWidget">
            <DomainRelationshipMoniker Name="SeparatorRefersLeftWidget" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="rightWidget">
            <DomainRelationshipMoniker Name="SeparatorRefersRightWidget" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="leftMargin">
            <DomainPropertyMoniker Name="VDVertSeparator/LeftMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rightMargin">
            <DomainPropertyMoniker Name="VDVertSeparator/RightMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="defaultX">
            <DomainPropertyMoniker Name="VDVertSeparator/DefaultX" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SeparatorRefersTopWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="separatorRefersTopWidgetMoniker" ElementName="separatorRefersTopWidget" MonikerTypeName="SeparatorRefersTopWidgetMoniker">
        <DomainRelationshipMoniker Name="SeparatorRefersTopWidget" />
      </XmlClassData>
      <XmlClassData TypeName="SeparatorRefersBottomWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="separatorRefersBottomWidgetMoniker" ElementName="separatorRefersBottomWidget" MonikerTypeName="SeparatorRefersBottomWidgetMoniker">
        <DomainRelationshipMoniker Name="SeparatorRefersBottomWidget" />
      </XmlClassData>
      <XmlClassData TypeName="SeparatorRefersLeftWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="separatorRefersLeftWidgetMoniker" ElementName="separatorRefersLeftWidget" MonikerTypeName="SeparatorRefersLeftWidgetMoniker">
        <DomainRelationshipMoniker Name="SeparatorRefersLeftWidget" />
      </XmlClassData>
      <XmlClassData TypeName="SeparatorRefersRightWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="separatorRefersRightWidgetMoniker" ElementName="separatorRefersRightWidget" MonikerTypeName="SeparatorRefersRightWidgetMoniker">
        <DomainRelationshipMoniker Name="SeparatorRefersRightWidget" />
      </XmlClassData>
      <XmlClassData TypeName="VDHoriSeparatorShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHoriSeparatorShapeMoniker" ElementName="vDHoriSeparatorShape" MonikerTypeName="VDHoriSeparatorShapeMoniker">
        <GeometryShapeMoniker Name="VDHoriSeparatorShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDVertSeparatorShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDVertSeparatorShapeMoniker" ElementName="vDVertSeparatorShape" MonikerTypeName="VDVertSeparatorShapeMoniker">
        <GeometryShapeMoniker Name="VDVertSeparatorShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDForm" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDFormMoniker" ElementName="vDForm" MonikerTypeName="VDFormMoniker">
        <DomainClassMoniker Name="VDForm" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="VDForm/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="action">
            <DomainPropertyMoniker Name="VDForm/Action" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="method">
            <DomainPropertyMoniker Name="VDForm/Method" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="target">
            <DomainPropertyMoniker Name="VDForm/Target" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="encType">
            <DomainPropertyMoniker Name="VDForm/EncType" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDSubmit" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSubmitMoniker" ElementName="vDSubmit" MonikerTypeName="VDSubmitMoniker">
        <DomainClassMoniker Name="VDSubmit" />
      </XmlClassData>
      <XmlClassData TypeName="VDRadio" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDRadioMoniker" ElementName="vDRadio" MonikerTypeName="VDRadioMoniker">
        <DomainClassMoniker Name="VDRadio" />
      </XmlClassData>
      <XmlClassData TypeName="VDCheckBox" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCheckBoxMoniker" ElementName="vDCheckBox" MonikerTypeName="VDCheckBoxMoniker">
        <DomainClassMoniker Name="VDCheckBox" />
      </XmlClassData>
      <XmlClassData TypeName="VDSelect" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSelectMoniker" ElementName="vDSelect" MonikerTypeName="VDSelectMoniker">
        <DomainClassMoniker Name="VDSelect" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="options">
            <DomainRelationshipMoniker Name="SelectHasOptions" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="VDSelect/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="disabled">
            <DomainPropertyMoniker Name="VDSelect/Disabled" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="multiple">
            <DomainPropertyMoniker Name="VDSelect/Multiple" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="size">
            <DomainPropertyMoniker Name="VDSelect/Size" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDInput" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDInputMoniker" ElementName="vDInput" MonikerTypeName="VDInputMoniker">
        <DomainClassMoniker Name="VDInput" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="VDInput/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="VDInput/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="value">
            <DomainPropertyMoniker Name="VDInput/Value" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="maxLength">
            <DomainPropertyMoniker Name="VDInput/MaxLength" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="accept">
            <DomainPropertyMoniker Name="VDInput/Accept" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alt">
            <DomainPropertyMoniker Name="VDInput/Alt" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="size">
            <DomainPropertyMoniker Name="VDInput/Size" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="checked">
            <DomainPropertyMoniker Name="VDInput/Checked" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="disabled">
            <DomainPropertyMoniker Name="VDInput/Disabled" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDSelectOption" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSelectOptionMoniker" ElementName="vDSelectOption" MonikerTypeName="VDSelectOptionMoniker">
        <DomainClassMoniker Name="VDSelectOption" />
        <ElementData>
          <XmlPropertyData XmlName="value">
            <DomainPropertyMoniker Name="VDSelectOption/Value" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="selected">
            <DomainPropertyMoniker Name="VDSelectOption/Selected" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="label">
            <DomainPropertyMoniker Name="VDSelectOption/Label" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="disabled">
            <DomainPropertyMoniker Name="VDSelectOption/Disabled" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDFormShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDFormShapeMoniker" ElementName="vDFormShape" MonikerTypeName="VDFormShapeMoniker">
        <GeometryShapeMoniker Name="VDFormShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDInputShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDInputShapeMoniker" ElementName="vDInputShape" MonikerTypeName="VDInputShapeMoniker">
        <GeometryShapeMoniker Name="VDInputShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDSubmitShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSubmitShapeMoniker" ElementName="vDSubmitShape" MonikerTypeName="VDSubmitShapeMoniker">
        <GeometryShapeMoniker Name="VDSubmitShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDRadioShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDRadioShapeMoniker" ElementName="vDRadioShape" MonikerTypeName="VDRadioShapeMoniker">
        <GeometryShapeMoniker Name="VDRadioShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDCheckBoxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCheckBoxShapeMoniker" ElementName="vDCheckBoxShape" MonikerTypeName="VDCheckBoxShapeMoniker">
        <GeometryShapeMoniker Name="VDCheckBoxShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDSelectShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSelectShapeMoniker" ElementName="vDSelectShape" MonikerTypeName="VDSelectShapeMoniker">
        <GeometryShapeMoniker Name="VDSelectShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDSelectOptionShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDSelectOptionShapeMoniker" ElementName="vDSelectOptionShape" MonikerTypeName="VDSelectOptionShapeMoniker">
        <GeometryShapeMoniker Name="VDSelectOptionShape" />
      </XmlClassData>
      <XmlClassData TypeName="SelectHasOptions" MonikerAttributeName="" SerializeId="true" MonikerElementName="selectHasOptionsMoniker" ElementName="selectHasOptions" MonikerTypeName="SelectHasOptionsMoniker">
        <DomainRelationshipMoniker Name="SelectHasOptions" />
      </XmlClassData>
      <XmlClassData TypeName="VDTab" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabMoniker" ElementName="vDTab" MonikerTypeName="VDTabMoniker">
        <DomainClassMoniker Name="VDTab" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="activeHead">
            <DomainRelationshipMoniker Name="TabHasActiveHead" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTabHead" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabHeadMoniker" ElementName="vDTabHead" MonikerTypeName="VDTabHeadMoniker">
        <DomainClassMoniker Name="VDTabHead" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="body">
            <DomainRelationshipMoniker Name="HeadLinksToBody" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="tabTitle">
            <DomainPropertyMoniker Name="VDTabHead/TabTitle" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTabBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabBodyMoniker" ElementName="vDTabBody" MonikerTypeName="VDTabBodyMoniker">
        <DomainClassMoniker Name="VDTabBody" />
      </XmlClassData>
      <XmlClassData TypeName="HeadLinksToBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="headLinksToBodyMoniker" ElementName="headLinksToBody" MonikerTypeName="HeadLinksToBodyMoniker">
        <DomainRelationshipMoniker Name="HeadLinksToBody" />
      </XmlClassData>
      <XmlClassData TypeName="TabHasActiveHead" MonikerAttributeName="" SerializeId="true" MonikerElementName="tabHasActiveHeadMoniker" ElementName="tabHasActiveHead" MonikerTypeName="TabHasActiveHeadMoniker">
        <DomainRelationshipMoniker Name="TabHasActiveHead" />
      </XmlClassData>
      <XmlClassData TypeName="VDTabShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabShapeMoniker" ElementName="vDTabShape" MonikerTypeName="VDTabShapeMoniker">
        <GeometryShapeMoniker Name="VDTabShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDTabHeadShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabHeadShapeMoniker" ElementName="vDTabHeadShape" MonikerTypeName="VDTabHeadShapeMoniker">
        <GeometryShapeMoniker Name="VDTabHeadShape" />
        <ElementData>
          <XmlPropertyData XmlName="isActiveTab">
            <DomainPropertyMoniker Name="VDTabHeadShape/isActiveTab" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTabBodyShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTabBodyShapeMoniker" ElementName="vDTabBodyShape" MonikerTypeName="VDTabBodyShapeMoniker">
        <GeometryShapeMoniker Name="VDTabBodyShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDInternalUtility" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDInternalUtilityMoniker" ElementName="vDInternalUtility" MonikerTypeName="VDInternalUtilityMoniker">
        <DomainClassMoniker Name="VDInternalUtility" />
      </XmlClassData>
      <XmlClassData TypeName="VDContainer" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDContainerMoniker" ElementName="vDContainer" MonikerTypeName="VDContainerMoniker">
        <DomainClassMoniker Name="VDContainer" />
        <ElementData>
          <XmlPropertyData XmlName="tag">
            <DomainPropertyMoniker Name="VDContainer/Tag" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="topSibling">
            <DomainRelationshipMoniker Name="ContainerHasTopSibling" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="rightSibling">
            <DomainRelationshipMoniker Name="ContainerHasRightSibling" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="bottomSibling">
            <DomainRelationshipMoniker Name="ContainerHasBottomSibling" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="leftSibling">
            <DomainRelationshipMoniker Name="ContainerHasLeftSibling" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="hasLeftAnchor">
            <DomainPropertyMoniker Name="VDContainer/HasLeftAnchor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="hasRightAnchor">
            <DomainPropertyMoniker Name="VDContainer/HasRightAnchor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="hasTopAnchor">
            <DomainPropertyMoniker Name="VDContainer/HasTopAnchor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="hasBottomAnchor">
            <DomainPropertyMoniker Name="VDContainer/HasBottomAnchor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="leftMargin">
            <DomainPropertyMoniker Name="VDContainer/LeftMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rightMargin">
            <DomainPropertyMoniker Name="VDContainer/RightMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="topMargin">
            <DomainPropertyMoniker Name="VDContainer/TopMargin" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="bottomMargin">
            <DomainPropertyMoniker Name="VDContainer/BottomMargin" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDHoriContainer" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHoriContainerMoniker" ElementName="vDHoriContainer" MonikerTypeName="VDHoriContainerMoniker">
        <DomainClassMoniker Name="VDHoriContainer" />
        <ElementData>
          <XmlPropertyData XmlName="fixedHeight">
            <DomainPropertyMoniker Name="VDHoriContainer/FixedHeight" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDVertContainer" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDVertContainerMoniker" ElementName="vDVertContainer" MonikerTypeName="VDVertContainerMoniker">
        <DomainClassMoniker Name="VDVertContainer" />
        <ElementData>
          <XmlPropertyData XmlName="fixedWidth">
            <DomainPropertyMoniker Name="VDVertContainer/FixedWidth" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDHoriContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHoriContainerShapeMoniker" ElementName="vDHoriContainerShape" MonikerTypeName="VDHoriContainerShapeMoniker">
        <GeometryShapeMoniker Name="VDHoriContainerShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDVertContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDVertContainerShapeMoniker" ElementName="vDVertContainerShape" MonikerTypeName="VDVertContainerShapeMoniker">
        <GeometryShapeMoniker Name="VDVertContainerShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDContainerShapeMoniker" ElementName="vDContainerShape" MonikerTypeName="VDContainerShapeMoniker">
        <GeometryShapeMoniker Name="VDContainerShape" />
        <ElementData>
          <XmlPropertyData XmlName="isTagDecoratorVisible" Representation="Ignore">
            <DomainPropertyMoniker Name="VDContainerShape/isTagDecoratorVisible" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasTopSibling" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasTopSiblingMoniker" ElementName="containerHasTopSibling" MonikerTypeName="ContainerHasTopSiblingMoniker">
        <DomainRelationshipMoniker Name="ContainerHasTopSibling" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasRightSibling" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasRightSiblingMoniker" ElementName="containerHasRightSibling" MonikerTypeName="ContainerHasRightSiblingMoniker">
        <DomainRelationshipMoniker Name="ContainerHasRightSibling" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasBottomSibling" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasBottomSiblingMoniker" ElementName="containerHasBottomSibling" MonikerTypeName="ContainerHasBottomSiblingMoniker">
        <DomainRelationshipMoniker Name="ContainerHasBottomSibling" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasLeftSibling" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasLeftSiblingMoniker" ElementName="containerHasLeftSibling" MonikerTypeName="ContainerHasLeftSiblingMoniker">
        <DomainRelationshipMoniker Name="ContainerHasLeftSibling" />
      </XmlClassData>
      <XmlClassData TypeName="VDTable" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableMoniker" ElementName="vDTable" MonikerTypeName="VDTableMoniker">
        <DomainClassMoniker Name="VDTable" />
        <ElementData>
          <XmlPropertyData XmlName="colCount">
            <DomainPropertyMoniker Name="VDTable/ColCount" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableShapeMoniker" ElementName="vDTableShape" MonikerTypeName="VDTableShapeMoniker">
        <GeometryShapeMoniker Name="VDTableShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDFullFilledContainer" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDFullFilledContainerMoniker" ElementName="vDFullFilledContainer" MonikerTypeName="VDFullFilledContainerMoniker">
        <DomainClassMoniker Name="VDFullFilledContainer" />
      </XmlClassData>
      <XmlClassData TypeName="VDFullFilledContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDFullFilledContainerShapeMoniker" ElementName="vDFullFilledContainerShape" MonikerTypeName="VDFullFilledContainerShapeMoniker">
        <GeometryShapeMoniker Name="VDFullFilledContainerShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDTableColTitle" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableColTitleMoniker" ElementName="vDTableColTitle" MonikerTypeName="VDTableColTitleMoniker">
        <DomainClassMoniker Name="VDTableColTitle" />
        <ElementData>
          <XmlPropertyData XmlName="index">
            <DomainPropertyMoniker Name="VDTableColTitle/Index" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableRowTitle" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowTitleMoniker" ElementName="vDTableRowTitle" MonikerTypeName="VDTableRowTitleMoniker">
        <DomainClassMoniker Name="VDTableRowTitle" />
        <ElementData>
          <XmlPropertyData XmlName="index">
            <DomainPropertyMoniker Name="VDTableRowTitle/Index" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableColTitleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableColTitleShapeMoniker" ElementName="vDTableColTitleShape" MonikerTypeName="VDTableColTitleShapeMoniker">
        <GeometryShapeMoniker Name="VDTableColTitleShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDTableRowTitleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowTitleShapeMoniker" ElementName="vDTableRowTitleShape" MonikerTypeName="VDTableRowTitleShapeMoniker">
        <GeometryShapeMoniker Name="VDTableRowTitleShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDTableRow" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowMoniker" ElementName="vDTableRow" MonikerTypeName="VDTableRowMoniker">
        <DomainClassMoniker Name="VDTableRow" />
        <ElementData>
          <XmlPropertyData XmlName="rowCount">
            <DomainPropertyMoniker Name="VDTableRow/RowCount" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colCount">
            <DomainPropertyMoniker Name="VDTableRow/ColCount" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rowType">
            <DomainPropertyMoniker Name="VDTableRow/RowType" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableRowShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowShapeMoniker" ElementName="vDTableRowShape" MonikerTypeName="VDTableRowShapeMoniker">
        <GeometryShapeMoniker Name="VDTableRowShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDTableCell" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableCellMoniker" ElementName="vDTableCell" MonikerTypeName="VDTableCellMoniker">
        <DomainClassMoniker Name="VDTableCell" />
        <ElementData>
          <XmlPropertyData XmlName="col">
            <DomainPropertyMoniker Name="VDTableCell/Col" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="row">
            <DomainPropertyMoniker Name="VDTableCell/Row" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colSpan">
            <DomainPropertyMoniker Name="VDTableCell/ColSpan" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rowSpan">
            <DomainPropertyMoniker Name="VDTableCell/RowSpan" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableCellShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableCellShapeMoniker" ElementName="vDTableCellShape" MonikerTypeName="VDTableCellShapeMoniker">
        <GeometryShapeMoniker Name="VDTableCellShape" />
        <ElementData>
          <XmlPropertyData XmlName="colSpan">
            <DomainPropertyMoniker Name="VDTableCellShape/ColSpan" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rowSpan">
            <DomainPropertyMoniker Name="VDTableCellShape/RowSpan" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTableRowWrapper" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowWrapperMoniker" ElementName="vDTableRowWrapper" MonikerTypeName="VDTableRowWrapperMoniker">
        <DomainClassMoniker Name="VDTableRowWrapper" />
      </XmlClassData>
      <XmlClassData TypeName="VDTableRowWrapperShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTableRowWrapperShapeMoniker" ElementName="vDTableRowWrapperShape" MonikerTypeName="VDTableRowWrapperShapeMoniker">
        <GeometryShapeMoniker Name="VDTableRowWrapperShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDHTMLTag" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHTMLTagMoniker" ElementName="vDHTMLTag" MonikerTypeName="VDHTMLTagMoniker">
        <DomainClassMoniker Name="VDHTMLTag" />
        <ElementData>
          <XmlPropertyData XmlName="tagName">
            <DomainPropertyMoniker Name="VDHTMLTag/TagName" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tagText">
            <DomainPropertyMoniker Name="VDHTMLTag/TagText" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_OpenTagStr">
            <DomainPropertyMoniker Name="VDHTMLTag/_OpenTagStr" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_CloseTagStr" Representation="Ignore">
            <DomainPropertyMoniker Name="VDHTMLTag/_CloseTagStr" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_IsCloseTagVisibleInHeader" Representation="Ignore">
            <DomainPropertyMoniker Name="VDHTMLTag/_IsCloseTagVisibleInHeader" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_IsCloseTagVisibleInFooter" Representation="Ignore">
            <DomainPropertyMoniker Name="VDHTMLTag/_IsCloseTagVisibleInFooter" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_HasTagText" Representation="Ignore">
            <DomainPropertyMoniker Name="VDHTMLTag/_HasTagText" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDHTMLTagShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDHTMLTagShapeMoniker" ElementName="vDHTMLTagShape" MonikerTypeName="VDHTMLTagShapeMoniker">
        <GeometryShapeMoniker Name="VDHTMLTagShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDCodeSnippetShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCodeSnippetShapeMoniker" ElementName="vDCodeSnippetShape" MonikerTypeName="VDCodeSnippetShapeMoniker">
        <GeometryShapeMoniker Name="VDCodeSnippetShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDCodeSnippet" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCodeSnippetMoniker" ElementName="vDCodeSnippet" MonikerTypeName="VDCodeSnippetMoniker">
        <DomainClassMoniker Name="VDCodeSnippet" />
        <ElementData>
          <XmlPropertyData XmlName="codeSnippet2">
            <DomainPropertyMoniker Name="VDCodeSnippet/CodeSnippet2" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_PreCodeSnippet">
            <DomainPropertyMoniker Name="VDCodeSnippet/_PreCodeSnippet" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_PostCodeSnippet" Representation="Ignore">
            <DomainPropertyMoniker Name="VDCodeSnippet/_PostCodeSnippet" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_HasPostCodeSnippet" Representation="Ignore">
            <DomainPropertyMoniker Name="VDCodeSnippet/_HasPostCodeSnippet" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="activeLinkedWidgetName">
            <DomainPropertyMoniker Name="VDCodeSnippet/ActiveLinkedWidgetName" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="_Mode" Representation="Ignore">
            <DomainPropertyMoniker Name="VDCodeSnippet/_Mode" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="activeLinkedWidget">
            <DomainRelationshipMoniker Name="CodeSnippetHasActiveLinkedWidget" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="body">
            <DomainRelationshipMoniker Name="CodeSnippetHasBody" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EditCodeSnippetOn" MonikerAttributeName="" SerializeId="true" MonikerElementName="editCodeSnippetOnMoniker" ElementName="editCodeSnippetOn" MonikerTypeName="EditCodeSnippetOnMoniker">
        <DomainRelationshipMoniker Name="EditCodeSnippetOn" />
      </XmlClassData>
      <XmlClassData TypeName="CodeSnippetHasActiveLinkedWidget" MonikerAttributeName="" SerializeId="true" MonikerElementName="codeSnippetHasActiveLinkedWidgetMoniker" ElementName="codeSnippetHasActiveLinkedWidget" MonikerTypeName="CodeSnippetHasActiveLinkedWidgetMoniker">
        <DomainRelationshipMoniker Name="CodeSnippetHasActiveLinkedWidget" />
      </XmlClassData>
      <XmlClassData TypeName="VDCodeSnippetBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCodeSnippetBodyMoniker" ElementName="vDCodeSnippetBody" MonikerTypeName="VDCodeSnippetBodyMoniker">
        <DomainClassMoniker Name="VDCodeSnippetBody" />
      </XmlClassData>
      <XmlClassData TypeName="CodeSnippetHasBody" MonikerAttributeName="" SerializeId="true" MonikerElementName="codeSnippetHasBodyMoniker" ElementName="codeSnippetHasBody" MonikerTypeName="CodeSnippetHasBodyMoniker">
        <DomainRelationshipMoniker Name="CodeSnippetHasBody" />
      </XmlClassData>
      <XmlClassData TypeName="VDCodeSnippetBodyShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDCodeSnippetBodyShapeMoniker" ElementName="vDCodeSnippetBodyShape" MonikerTypeName="VDCodeSnippetBodyShapeMoniker">
        <GeometryShapeMoniker Name="VDCodeSnippetBodyShape" />
      </XmlClassData>
      <XmlClassData TypeName="VDText" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTextMoniker" ElementName="vDText" MonikerTypeName="VDTextMoniker">
        <DomainClassMoniker Name="VDText" />
        <ElementData>
          <XmlPropertyData XmlName="content">
            <DomainPropertyMoniker Name="VDText/Content" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="encoding">
            <DomainPropertyMoniker Name="VDText/Encoding" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="VDTextShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="vDTextShapeMoniker" ElementName="vDTextShape" MonikerTypeName="VDTextShapeMoniker">
        <GeometryShapeMoniker Name="VDTextShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MVCVisualDesignerExplorer">
    <CustomNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\TabIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDTab" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Table.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDTable" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\CheckBoxIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDCheckBox" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\HtmlTagIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDHTMLTag" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\FormIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDForm" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\CodeSnippetIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDCodeSnippet" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\InputIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDInput" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\RadioIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDRadio" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\SectionIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDSection" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\SelectIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDSelect" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDWidget/WidgetName" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\ButtonIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDSubmit" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\ViewIcon.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDView" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\HoriSeparator.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDHoriSeparator" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\VertSeparator.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDVertSeparator" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\FillRight.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDHoriContainer" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDContainer/Tag" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\FillDown.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDVertContainer" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDContainer/Tag" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\FullFilledContainer.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="VDFullFilledContainer" />
        </Class>
        <PropertyDisplayed>
          <PropertyPath>
            <DomainPropertyMoniker Name="VDContainer/Tag" />
            <DomainPath />
          </PropertyPath>
        </PropertyDisplayed>
      </ExplorerNodeSettings>
    </CustomNodeSettings>
    <HiddenNodes>
      <DomainPath>WidgetHasTitle.Title</DomainPath>
    </HiddenNodes>
  </ExplorerBehavior>
  <ConnectionBuilders>
    <ConnectionBuilder Name="SeparatorRefersTopWidgetBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="SeparatorRefersTopWidget" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDHoriSeparator" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="SeparatorRefersBottomWidgetBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="SeparatorRefersBottomWidget" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDHoriSeparator" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="SeparatorRefersLeftWidgetBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="SeparatorRefersLeftWidget" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDVertSeparator" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="SeparatorRefersRightWidgetBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="SeparatorRefersRightWidget" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDVertSeparator" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="HeadLinksToBodyBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="HeadLinksToBody" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDTabHead" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDTabBody" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="TabHasActiveHeadBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="TabHasActiveHead" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDTab" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDTabHead" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainerHasTopSiblingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ContainerHasTopSibling" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDContainer" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainerHasRightSiblingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ContainerHasRightSibling" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDContainer" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainerHasBottomSiblingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ContainerHasBottomSibling" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDContainer" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainerHasLeftSiblingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ContainerHasLeftSibling" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDContainer" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="EditCodeSnippetOnBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EditCodeSnippetOn" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDCodeSnippet" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CodeSnippetHasActiveLinkedWidgetBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CodeSnippetHasActiveLinkedWidget" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDCodeSnippet" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="VDWidget" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="1fd11f50-969f-48aa-af5b-31b4277c4671" Description="" Name="VDDiagram" DisplayName="Minimal Language Diagram" Namespace="MVCVisualDesigner" GeneratesDoubleDerived="true">
    <Class>
      <DomainClassMoniker Name="VDView" />
    </Class>
    <ShapeMaps>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDSection" />
        <GeometryShapeMoniker Name="VDSectionShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDWidgetTitle" />
        <ParentElementPath>
          <DomainPath>WidgetHasTitle.Widget/!VDWidget</DomainPath>
        </ParentElementPath>
        <PortMoniker Name="VDWidgetTitlePort" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="VDSectionHead" />
        <ParentElementPath>
          <DomainPath>SectionHasHead.Section/!VDSection</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="VDSectionHeadShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="VDSectionBody" />
        <ParentElementPath>
          <DomainPath>SectionHasBody.Section/!VDSection</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="VDSectionBodyShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDHoriSeparator" />
        <GeometryShapeMoniker Name="VDHoriSeparatorShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDVertSeparator" />
        <GeometryShapeMoniker Name="VDVertSeparatorShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDForm" />
        <GeometryShapeMoniker Name="VDFormShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDInput" />
        <GeometryShapeMoniker Name="VDInputShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDSubmit" />
        <GeometryShapeMoniker Name="VDSubmitShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDRadio" />
        <GeometryShapeMoniker Name="VDRadioShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDCheckBox" />
        <GeometryShapeMoniker Name="VDCheckBoxShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDSelect" />
        <GeometryShapeMoniker Name="VDSelectShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="VDSelectOption" />
        <ParentElementPath>
          <DomainPath>SelectHasOptions.Select/!VDSelect</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="VDSelectOptionShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTab" />
        <GeometryShapeMoniker Name="VDTabShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTabHead" />
        <GeometryShapeMoniker Name="VDTabHeadShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTabBody" />
        <GeometryShapeMoniker Name="VDTabBodyShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDHoriContainer" />
        <GeometryShapeMoniker Name="VDHoriContainerShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDVertContainer" />
        <GeometryShapeMoniker Name="VDVertContainerShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTable" />
        <GeometryShapeMoniker Name="VDTableShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDFullFilledContainer" />
        <GeometryShapeMoniker Name="VDFullFilledContainerShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTableColTitle" />
        <GeometryShapeMoniker Name="VDTableColTitleShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTableRowTitle" />
        <GeometryShapeMoniker Name="VDTableRowTitleShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTableRow" />
        <GeometryShapeMoniker Name="VDTableRowShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTableCell" />
        <GeometryShapeMoniker Name="VDTableCellShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDTableRowWrapper" />
        <GeometryShapeMoniker Name="VDTableRowWrapperShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDHTMLTag" />
        <GeometryShapeMoniker Name="VDHTMLTagShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDCodeSnippet" />
        <GeometryShapeMoniker Name="VDCodeSnippetShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="VDCodeSnippetBody" />
        <ParentElementPath>
          <DomainPath>CodeSnippetHasBody.ParentCodeSnippet/!VDCodeSnippet</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="VDCodeSnippetBodyShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDContainer" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="VDContainerShape/TagDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="VDContainer/Tag" />
            </PropertyPath>
          </PropertyDisplayed>
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="VDContainerShape/isTagDecoratorVisible" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="True" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <GeometryShapeMoniker Name="VDContainerShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="VDText" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="VDTextShape/ContentDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="VDText/Content" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="VDTextShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="amvd" EditorGuid="061c971a-6960-4ef9-9c30-8a8a6543b9f7">
    <RootClass>
      <DomainClassMoniker Name="VDView" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MVCVisualDesignerSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Widget">
      <ElementTool Name="SectionTool" ToolboxIcon="Resources\SectionIcon.bmp" Caption="Section" Tooltip="" HelpKeyword="SectionTool">
        <DomainClassMoniker Name="VDSection" />
      </ElementTool>
      <ElementTool Name="TabTool" ToolboxIcon="Resources\TabIcon.bmp" Caption="Tab" Tooltip="" HelpKeyword="TabTool">
        <DomainClassMoniker Name="VDTab" />
      </ElementTool>
      <ElementTool Name="TableTool" ToolboxIcon="Resources\Table.bmp" Caption="Table" Tooltip="" HelpKeyword="TableTool">
        <DomainClassMoniker Name="VDTable" />
      </ElementTool>
      <ElementTool Name="TableRowsTool" ToolboxIcon="Resources\GridLayoutIcon2.bmp" Caption="Table Rows" Tooltip="" HelpKeyword="TableRowsTool">
        <DomainClassMoniker Name="VDTableRow" />
      </ElementTool>
      <ElementTool Name="HTMLTagTool" ToolboxIcon="Resources\HtmlTagIcon.bmp" Caption="HTML Tag" Tooltip="" HelpKeyword="HTMLTagTool">
        <DomainClassMoniker Name="VDHTMLTag" />
      </ElementTool>
      <ElementTool Name="CodeSnippetTool" ToolboxIcon="Resources\CodeSnippetIcon.bmp" Caption="Code Snippet" Tooltip="" HelpKeyword="CodeSnippetTool">
        <DomainClassMoniker Name="VDCodeSnippet" />
      </ElementTool>
      <ElementTool Name="TextTool" ToolboxIcon="Resources\FontDialog.bmp" Caption="Text" Tooltip="" HelpKeyword="TextTool">
        <DomainClassMoniker Name="VDText" />
      </ElementTool>
    </ToolboxTab>
    <ToolboxTab TabText="Form">
      <ElementTool Name="FormTool" ToolboxIcon="Resources\FormIcon.bmp" Caption="Form" Tooltip="" HelpKeyword="FormTool">
        <DomainClassMoniker Name="VDForm" />
      </ElementTool>
      <ElementTool Name="InputTool" ToolboxIcon="Resources\InputIcon.bmp" Caption="Input" Tooltip="" HelpKeyword="InputTool">
        <DomainClassMoniker Name="VDInput" />
      </ElementTool>
      <ElementTool Name="SubmitTool" ToolboxIcon="Resources\ButtonIcon.bmp" Caption="Submit" Tooltip="" HelpKeyword="SubmitTool">
        <DomainClassMoniker Name="VDSubmit" />
      </ElementTool>
      <ElementTool Name="RadioTool" ToolboxIcon="Resources\RadioIcon.bmp" Caption="Radio" Tooltip="" HelpKeyword="RadioTool">
        <DomainClassMoniker Name="VDRadio" />
      </ElementTool>
      <ElementTool Name="CheckBoxTool" ToolboxIcon="Resources\CheckBoxIcon.bmp" Caption="Check Box" Tooltip="" HelpKeyword="CheckBoxTool">
        <DomainClassMoniker Name="VDCheckBox" />
      </ElementTool>
      <ElementTool Name="SelectTool" ToolboxIcon="Resources\SelectIcon.bmp" Caption="Select" Tooltip="" HelpKeyword="SelectTool">
        <DomainClassMoniker Name="VDSelect" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="VDDiagram" />
  </Designer>
  <Explorer ExplorerGuid="a88f64c9-f30b-4d4a-825d-009ceed441ad" Title="MVC Visual Designer Explorer">
    <ExplorerBehaviorMoniker Name="MVCVisualDesigner/MVCVisualDesignerExplorer" />
  </Explorer>
</Dsl>