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
      pluginId=""
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
  </Frame>
</Screen>
