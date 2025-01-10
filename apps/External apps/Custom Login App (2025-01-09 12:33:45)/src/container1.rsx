<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  transition="slide"
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="52b62" viewKey="Login">
    <Form
      id="LoginForm"
      disabled=""
      disableSubmit="{{ LoginForm.invalid }}"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      margin="8px 8px"
      marginType="none"
      padding="48px 24px"
      paddingType="none"
      requireValidation={true}
      showBody={true}
      showBorder={false}
      style={{ ordered: [] }}
    >
      <Text
        id="FormTitle"
        marginType="normal"
        value=" ## Welcome back"
        verticalAlign="center"
      />
      <Text
        id="text2"
        marginType="normal"
        style={{ ordered: [] }}
        value="Sign into your portal."
        verticalAlign="center"
      />
      <Text id="text3" value="**Email**" verticalAlign="center" />
      <TextInput
        id="EmailInput"
        iconBefore="bold/mail-send-envelope"
        label=""
        labelPosition="top"
        marginType="normal"
        patternType="email"
        placeholder="name@company.com"
        required={true}
      />
      <Text id="text4" value="**Password**" verticalAlign="center" />
      <PasswordInput
        id="PasswordInput"
        label=""
        labelPosition="top"
        marginType="normal"
        minLength="8"
        placeholder="••••••••••"
        required={true}
        showTextToggle={true}
      />
      <Link
        id="forgotPasswordButton"
        horizontalAlign="right"
        text="Forgot Password?"
      />
      <Button
        id="formButton1"
        marginType="normal"
        style={{ ordered: [] }}
        submit={true}
        submitTargetId="LoginForm"
        text="Sign in"
      />
      <Divider id="divider1" text="or" />
      <Button
        id="LoginWithGoogleButton"
        iconBefore="bold/computer-logo-google"
        marginType="normal"
        style={{
          ordered: [
            { border: "{{ theme.primary}}" },
            { label: "{{ theme.primary }}" },
          ],
        }}
        styleVariant="outline"
        text="Sign in with Google"
      >
        <Event
          event="click"
          method="openUrl"
          params={{
            ordered: [
              { options: { ordered: [{ newTab: false }] } },
              { url: "https://login.retool.com/googlelogin?origin=login" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Alert
        id="ErrorAlert"
        description="{{ login.error }}"
        hidden="{{ !login.error }}"
        title="Error"
        type="error"
      />
      <Container
        id="group1"
        _gap="0px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <View id="52b62" viewKey="View 1">
          <Text
            id="text5"
            horizontalAlign="right"
            value="New here?"
            verticalAlign="center"
          />
          <Link id="link1" showUnderline="never" text="Sign up">
            <Event
              event="click"
              method="setCurrentViewIndex"
              params={{ ordered: [{ viewIndex: "1" }] }}
              pluginId="container1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </View>
      </Container>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="login"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="d5999"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Signup"
  >
    <Form
      id="LoginForm2"
      disabled=""
      disableSubmit="{{ LoginForm2.invalid }}"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      margin="8px 8px"
      marginType="none"
      padding="48px 24px"
      paddingType="none"
      requireValidation={true}
      showBody={true}
      showBorder={false}
      style={{ ordered: [] }}
    >
      <Text
        id="FormTitle2"
        marginType="normal"
        value=" ## Sign up"
        verticalAlign="center"
      />
      <Text
        id="text6"
        marginType="normal"
        style={{ ordered: [] }}
        value="Sign up to get access to the portal."
        verticalAlign="center"
      />
      <Text id="text7" value="**Email**" verticalAlign="center" />
      <TextInput
        id="SignupEmail"
        iconBefore="bold/mail-send-envelope"
        label=""
        labelPosition="top"
        marginType="normal"
        patternType="email"
        placeholder="name@company.com"
        required={true}
      />
      <Button
        id="formButton2"
        marginType="normal"
        style={{ ordered: [] }}
        submit={true}
        submitTargetId="LoginForm2"
        text="Sign up"
      />
      <Container
        id="group2"
        _gap="0px"
        _justify="end"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <View id="52b62" viewKey="View 1">
          <Text
            id="text9"
            horizontalAlign="right"
            value="Already have an account?"
            verticalAlign="center"
          />
          <Link
            id="link2"
            horizontalAlign="right"
            showUnderline="never"
            text="Sign in"
          >
            <Event
              event="click"
              method="setCurrentViewIndex"
              params={{ ordered: [{ viewIndex: "0" }] }}
              pluginId="container1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </View>
      </Container>
      <Event
        event="submit"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "2" }] }}
        pluginId="container1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendInvite"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="75736"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Success"
  >
    <Image
      id="image2"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="c8777213-7f9c-4415-bc5e-8e1e66be2f52"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
    <Text
      id="FormTitle3"
      marginType="normal"
      value=" ## All set!"
      verticalAlign="center"
    />
    <Text
      id="text10"
      value="We've sent you an email to confirm your account."
      verticalAlign="center"
    />
  </View>
</Container>
