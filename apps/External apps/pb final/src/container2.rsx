<Container
  id="container2"
  currentViewKey="View 1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Button id="button2" text="Order New Asset">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="containerTitle2"
      value="#### HuluNet+ Assets"
      verticalAlign="center"
    />
  </Header>
  <View id="d24e0" viewKey="View 1">
    <TextInput
      id="textInput1"
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search"
    />
    <Select
      id="select1"
      emptyMessage="No options"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter"
      showSelectionIndicator={true}
    >
      <Option id="278a7" disabled={false} hidden={false} value="By Type" />
    </Select>
    <Table
      id="table1"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ assetManagement.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="1100000"
      linkedFilterId=""
      overflowType="pagination"
      rowHeight="small"
      searchTerm="{{ textInput1.value }}"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="100"
      toolbarPosition="bottom"
    >
      <Column
        id="b9a7d"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="f46d6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={239}
      />
      <Column
        id="c4104"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Enter value"
        position="center"
        size={134}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e13a9"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="language"
        label="Language"
        placeholder="Enter value"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a8be5"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Enter value"
        position="center"
        size={130}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="db8a6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="spend"
        label="Cost"
        placeholder="Enter value"
        position="center"
        size={93.34375}
      />
      <Column
        id="93aba"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={487.34375}
      />
      <Column
        id="91750"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="media"
        label="Media"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Action
        id="f384e"
        icon="bold/interface-arrows-right-circle-2"
        label="View Asset"
      >
        <Event
          event="clickAction"
          method="showNextView"
          params={{ ordered: [] }}
          pluginId="container2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
  </View>
  <View
    id="50550"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="View 2"
  >
    <Include src="./container1.rsx" />
  </View>
</Container>
