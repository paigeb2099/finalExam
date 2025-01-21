<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="orderExisting"
    actionType="INSERT"
    changeset={
      '[{"key":"status","value":"Order Placed"},{"key":"ordered_by","value":"{{ current_user.firstName + \' \' + current_user.lastName }}"},{"key":"date","value":"{{ new Date().toISOString()}}\\n"},{"key":"description","value":"{{ table1.selectedRow.name + \', \' + textInput2.value }}"},{"key":"deadline","value":"{{ new Date(dateTime1.value).toISOString() }}"},{"key":"order_type","value":"From existing asset"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    runWhenModelUpdates={false}
    tableName="hulunet_orders"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="orders"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="newOrder"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getDistinct"
    isMultiplayerEdited={false}
    query={include("../lib/getDistinct.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="orderNew"
    actionType="INSERT"
    changeset={
      '[{"key":"description","value":"{{ textInput5.value }}"},{"key":"ordered_by","value":"{{ current_user.firstName + \' \' + current_user.lastName }}"},{"key":"date","value":"{{ new Date().toISOString()}}"},{"key":"deadline","value":"{{ new Date(dateTime2.value).toISOString() }}"},{"key":"status","value":"Order Placed"},{"key":"order_type","value":"New"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="hulunet_orders"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="orders"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="addNewAsset"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="newOrder"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="addNewAsset"
    actionType="INSERT"
    changeset={
      '[{"key":"description","value":"{{ textInput4.value }}"},{"key":"language","value":"{{ select3.value }}"},{"key":"country","value":"{{ select4.value }}"},{"key":"spend","value":"10000"},{"key":"media","value":"{{ textInput6.value }}"},{"key":"type","value":"{{ select2.value }}"},{"key":"name","value":"{{ textInput3.value }}"}]'
    }
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="hulunet_assets"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="assetManagement"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <WorkflowRun
    id="newOrder"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="ba5df543-df0b-422a-ae84-6b038ba31113"
    workflowRunBodyType="none"
  />
  <SqlQueryUnified
    id="query13"
    query={include("../lib/query13.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    vectorModeEnabled={true}
    vectorNamespaceIds={["d526f75a-0449-42ab-a368-ee9519c916c0"]}
    vectorNamespaceIdsFilters={[
      {
        ordered: [
          { namespaceId: "d526f75a-0449-42ab-a368-ee9519c916c0" },
          { filters: [] },
        ],
      },
    ]}
  />
  <SqlQueryUnified
    id="assetPaginationIncluded"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/assetPaginationIncluded.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="totalAssets"
    query={include("../lib/totalAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterAssets"
    notificationDuration={4.5}
    query={include("../lib/filterAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="2d377f5e-704c-4f5b-867d-6ab970d07267"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <State id="variable1" value="{{ groupSelector.value }}" />
  <connectResource id="query17" _componentId={null} />
  <JavascriptQuery
    id="query18"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./drawerFrame1.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./assetView.rsx" />
    <Include src="./container2.rsx" />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ assetPaginationIncluded.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="f5376"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="f5376"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="758ef"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="174ac"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cb78e"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="media"
        label="Media"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="add53"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8c334"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="eeadc"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="eed31"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
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
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
