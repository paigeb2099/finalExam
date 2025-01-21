<ModalFrame
  id="modalFrame2"
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
    <Text
      id="modalTitle2"
      value="### Order Existing Asset #{{ table1.selectedRow.id }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
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
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Text
          id="text7"
          value="**Asset Name:** {{ table1.selectedRow.name }}"
          verticalAlign="center"
        />
        <Text
          id="text9"
          value="**Country:** {{ table1.selectedRow.country }}"
          verticalAlign="center"
        />
        <Text
          id="text8"
          value="**Asset Type:** {{ table1.selectedRow.type }}"
          verticalAlign="center"
        />
        <Text
          id="text10"
          value="**Language:** {{ table1.selectedRow.language }}"
          verticalAlign="center"
        />
        <Text
          id="text11"
          value="**Description:** *{{ table1.selectedRow.description }}*"
          verticalAlign="center"
        />
        <TextInput
          id="textInput2"
          label="Purpose for Order:"
          labelPosition="top"
          placeholder="Marketing, project, etc."
        />
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          displayTimeZone="local"
          iconBefore="bold/interface-calendar"
          label="Delivered By:"
          labelPosition="top"
          manageTimeZone={true}
          minuteStep={15}
          value="{{ new Date(new Date().setDate(new Date().getDate() + 1)) }}"
          valueTimeZone="00:00"
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          submit={true}
          submitTargetId="form2"
          text="Submit"
        />
        <Text
          id="text12"
          value="**Cost:** ${{ table1.selectedRow.spend }}"
          verticalAlign="center"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="orderExisting"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
