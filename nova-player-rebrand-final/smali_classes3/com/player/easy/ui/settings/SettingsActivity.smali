.class public final Lcom/player/easy/ui/settings/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/player/easy/ui/settings/SettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "binding",
        "Lcom/player/easy/databinding/SettingsActivityBinding;",
        "getBinding",
        "()Lcom/player/easy/databinding/SettingsActivityBinding;",
        "setBinding",
        "(Lcom/player/easy/databinding/SettingsActivityBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/player/easy/ui/settings/SettingsActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n+ 3 FragmentTransaction.kt\nandroidx/fragment/app/FragmentTransactionKt\n*L\n1#1,33:1\n28#2,6:34\n34#2,6:45\n39#3,5:40\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/player/easy/ui/settings/SettingsActivity\n*L\n26#1:34,6\n26#1:45,6\n28#1:40,5\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/player/easy/databinding/SettingsActivityBinding;


# direct methods
.method public static synthetic $r8$lambda$PAquol9Pp9k2o1F287YJwF9eFqM(Lcom/player/easy/ui/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/settings/SettingsActivity;->onCreate$lambda$0(Lcom/player/easy/ui/settings/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/player/easy/databinding/SettingsActivityBinding;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/player/easy/ui/settings/SettingsActivity;->binding:Lcom/player/easy/databinding/SettingsActivityBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 16
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/databinding/SettingsActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/SettingsActivityBinding;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/player/easy/ui/settings/SettingsActivity;->setBinding(Lcom/player/easy/databinding/SettingsActivityBinding;)V

    .line 19
    invoke-virtual {p0}, Lcom/player/easy/ui/settings/SettingsActivity;->getBinding()Lcom/player/easy/databinding/SettingsActivityBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/databinding/SettingsActivityBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/player/easy/ui/settings/SettingsActivity;->getBinding()Lcom/player/easy/databinding/SettingsActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/SettingsActivityBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/player/easy/ui/settings/SettingsActivity;->getBinding()Lcom/player/easy/databinding/SettingsActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/SettingsActivityBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Lcom/player/easy/ui/settings/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/settings/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/settings/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    sget v0, Lcom/player/easy/R$id;->fragment_container_view:I

    .line 44
    const-class v1, Lcom/player/easy/ui/settings/SettingsGeneralFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public final setBinding(Lcom/player/easy/databinding/SettingsActivityBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/player/easy/ui/settings/SettingsActivity;->binding:Lcom/player/easy/databinding/SettingsActivityBinding;

    return-void
.end method
