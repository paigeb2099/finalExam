<Container
  id="assetView"
  currentViewKey="View 1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Button id="button4" iconBefore="bold/computer-robot" text="Help">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
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
      showClear={true}
    />
    <Select
      id="select1"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label=""
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Filter"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values=""
    >
      <Option
        id="278a7"
        disabled={false}
        hidden={false}
        value="Social Media Post"
      />
      <Option id="54d41" disabled={false} hidden={false} value="Billboard" />
      <Option id="15da3" disabled={false} hidden={false} value="Trailer" />
      <Option id="bba05" disabled={false} hidden={false} value="Video Clip" />
      <Option id="5b55f" disabled={false} hidden={false} value="Art" />
      <Event
        event="change"
        method="setFilter"
        params={{
          ordered: [
            {
              filter: {
                ordered: [
                  { id: "{{ self.id }}" },
                  { columnId: "type" },
                  { operator: "=" },
                  { value: "{{ self.value }}" },
                ],
              },
            },
          ],
        }}
        pluginId="table1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ assetPaginationIncluded.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{ totalAssets.data.count }}"
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
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={30.890625}
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
        size={239.34375}
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
        size={116.796875}
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
        size={71.890625}
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
        size={85.265625}
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
        size={74.34375}
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
        size={497.171875}
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
        size={506}
      />
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
      <Event
        event="selectRow"
        method={null}
        params={{ ordered: [] }}
        pluginId=""
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="50550"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="View 2"
  />
</Container>
