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
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
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
      pluginId="query12"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <connectResource id="query6" _componentId="select3" />
  <connectResource id="query7" _componentId="select4" />
  <SqlQueryUnified
    id="getDistinct"
    isMultiplayerEdited={false}
    query={include("../lib/getDistinct.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
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
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
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
      pluginId="query12"
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
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
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
  <connectResource id="query11" _componentId="select1" />
  <WorkflowRun
    id="query12"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="1e0e7f31-3290-4b72-aa84-eb18da00dee5"
  />
  <SqlQueryUnified
    id="query13"
    query={include("../lib/query13.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="query14"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
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
    vectorNamespaceIds={["001849d9-8b81-4ef0-9fc6-75565384eef3"]}
    vectorNamespaceIdsFilters={[
      {
        ordered: [
          { namespaceId: "001849d9-8b81-4ef0-9fc6-75565384eef3" },
          { filters: [] },
        ],
      },
    ]}
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
    <Include src="./container2.rsx" />
    <Button
      id="button4"
      horizontalAlign="right"
      iconBefore="bold/computer-robot"
      text="Help"
    >
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
  </Frame>
</Screen>
