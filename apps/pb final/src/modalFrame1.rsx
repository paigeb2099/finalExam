<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle1" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table1.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="select2"
          data="{{ assetManagement.data }}"
          emptyMessage="No options"
          formDataKey="asset_name"
          label="Title"
          labelPosition="top"
          labels="{{ item.asset_name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.asset_id }}"
        />
        <Select
          id="select3"
          captionByIndex=""
          colorByIndex=""
          data=""
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="asset_type"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Type"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          values=""
        >
          <Option id="074fd" disabled={false} hidden={false} value="Clip" />
          <Option id="92113" disabled={false} hidden={false} value="Art" />
          <Option id="727e7" disabled={false} hidden={false} value="Trailer" />
          <Option
            id="05709"
            disabled={false}
            hidden={false}
            value="Social Media Post"
          />
        </Select>
        <Select
          id="select4"
          emptyMessage="No options"
          formDataKey="language"
          itemMode="static"
          label="Language"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="09264" value="Option 1" />
          <Option id="766ba" value="Option 2" />
          <Option id="2715e" value="Option 3" />
        </Select>
        <Select
          id="select5"
          emptyMessage="No options"
          formDataKey="country"
          itemMode="static"
          label="Country"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="931b6" value="Option 1" />
          <Option id="f0a55" value="Option 2" />
          <Option id="843c3" value="Option 3" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
  </Body>
</ModalFrame>
