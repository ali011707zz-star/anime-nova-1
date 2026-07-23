.class public final Lcom/player/easy/ui/downloads/DownloadsFragment;
.super Landroidx/fragment/app/Fragment;
.source "DownloadsFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000bR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/player/easy/ui/downloads/DownloadsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "binding",
        "Lcom/player/easy/databinding/FragmentDownloadsBinding;",
        "getBinding",
        "()Lcom/player/easy/databinding/FragmentDownloadsBinding;",
        "binding$delegate",
        "Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;",
        "pendingTab",
        "",
        "Ljava/lang/Integer;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "selectTab",
        "index",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

.field private pendingTab:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$edtOSm49l3MlkpiIpNRRz3UupMM(Lcom/player/easy/ui/downloads/DownloadsFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/downloads/DownloadsFragment;->onViewCreated$lambda$0(Lcom/player/easy/ui/downloads/DownloadsFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/player/easy/ui/downloads/DownloadsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/player/easy/ui/downloads/DownloadsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    sget v0, Lcom/player/easy/R$layout;->fragment_downloads:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 13
    sget-object v0, Lcom/player/easy/ui/downloads/DownloadsFragment$binding$2;->INSTANCE:Lcom/player/easy/ui/downloads/DownloadsFragment$binding$2;

    invoke-static {p0, v0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegateKt;->viewBinding(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/downloads/DownloadsFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    return-void
.end method

.method private final getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/player/easy/ui/downloads/DownloadsFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    sget-object v1, Lcom/player/easy/ui/downloads/DownloadsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/player/easy/databinding/FragmentDownloadsBinding;

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/player/easy/ui/downloads/DownloadsFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    sget p2, Lcom/player/easy/R$string;->label_finished:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 26
    :cond_1
    sget p2, Lcom/player/easy/R$string;->label_queue:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lcom/player/easy/ui/downloads/DownloadsPagerAdapter;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/downloads/DownloadsPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 21
    invoke-direct {p0}, Lcom/player/easy/ui/downloads/DownloadsFragment;->getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/player/easy/databinding/FragmentDownloadsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-direct {p0}, Lcom/player/easy/ui/downloads/DownloadsFragment;->getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/player/easy/databinding/FragmentDownloadsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Lcom/player/easy/ui/downloads/DownloadsFragment;->getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/FragmentDownloadsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 31
    new-instance v1, Lcom/player/easy/ui/downloads/DownloadsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/downloads/DownloadsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/downloads/DownloadsFragment;)V

    .line 23
    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 33
    iget-object p1, p0, Lcom/player/easy/ui/downloads/DownloadsFragment;->pendingTab:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 34
    invoke-direct {p0}, Lcom/player/easy/ui/downloads/DownloadsFragment;->getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/player/easy/databinding/FragmentDownloadsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/player/easy/ui/downloads/DownloadsFragment;->pendingTab:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public final selectTab(I)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/player/easy/ui/downloads/DownloadsFragment;->getBinding()Lcom/player/easy/databinding/FragmentDownloadsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/FragmentDownloadsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/downloads/DownloadsFragment;->pendingTab:Ljava/lang/Integer;

    return-void
.end method
