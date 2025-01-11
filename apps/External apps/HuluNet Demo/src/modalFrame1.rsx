<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text id="modalTitle1" value="### Order New Asset" verticalAlign="center" />
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
        <TextInput
          id="textInput5"
          label="Reason for Order:"
          labelPosition="top"
          placeholder="Marketing, project materials, etc."
          required={true}
        />
        <TextInput
          id="textInput3"
          label="Asset Name:"
          labelPosition="top"
          placeholder="Enter New Asset Name"
          required={true}
        />
        <Select
          id="select2"
          data="{{ assetManagement.data }}"
          emptyMessage="No options"
          label="Asset Type:"
          labelPosition="top"
          labels="{{ item.type }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.type }}"
        />
        <Select
          id="select4"
          captionByIndex=""
          data="{{ assetManagement.data }}"
          emptyMessage="No options"
          label="Country:"
          labelPosition="top"
          labels="{{ item.country}}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.country }}"
        />
        <Select
          id="select3"
          data="{{ assetManagement.data }}"
          emptyMessage="No options"
          label="Language"
          labelPosition="top"
          labels="{{ item.language }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.language }}"
        />
        <TextInput
          id="textInput4"
          label="Description of Asset"
          labelPosition="top"
          placeholder="Describe New Asset"
          required={true}
        />
        <DateTime
          id="dateTime2"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="To be delivered by:"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date(new Date().setDate(new Date().getDate() + 1)) }}"
        />
        <TextInput
          id="textInput6"
          label="Include media link here, if existing"
          labelPosition="top"
          placeholder="Paste link here"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="orderNew"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
