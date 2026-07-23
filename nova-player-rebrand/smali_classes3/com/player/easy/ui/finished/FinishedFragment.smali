.class public final Lcom/player/easy/ui/finished/FinishedFragment;
.super Landroidx/fragment/app/Fragment;
.source "FinishedFragment.kt"

# interfaces
.implements Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0002J\u0008\u0010#\u001a\u00020\u001cH\u0016J\u0018\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u001a\u0010.\u001a\u00020/2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u00100\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u00102\u001a\u00020\u001cH\u0002J\u0008\u00103\u001a\u00020\u001cH\u0002J\u0018\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u000207H\u0016J\u0018\u00108\u001a\u00020/2\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u000207H\u0016J\u0018\u00109\u001a\u00020/2\u0006\u00105\u001a\u00020\u00172\u0006\u0010:\u001a\u00020(H\u0016J\u0010\u00109\u001a\u00020/2\u0006\u0010:\u001a\u00020(H\u0002J\u0010\u0010;\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u0017H\u0016J\u0008\u0010<\u001a\u00020\u001cH\u0016J\u0008\u0010=\u001a\u00020\u001cH\u0002J\u0008\u0010>\u001a\u00020\u001cH\u0002R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/player/easy/ui/finished/FinishedFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;",
        "Landroidx/appcompat/view/ActionMode$Callback;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/player/easy/databinding/FinishedFragmentBinding;",
        "getBinding",
        "()Lcom/player/easy/databinding/FinishedFragmentBinding;",
        "binding$delegate",
        "Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;",
        "viewModel",
        "Lcom/player/easy/ui/finished/FinishedViewModel;",
        "getViewModel",
        "()Lcom/player/easy/ui/finished/FinishedViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "adapter",
        "Lcom/player/easy/ui/finished/FinishedAdapter;",
        "actionMode",
        "Landroidx/appcompat/view/ActionMode;",
        "selectedDownloads",
        "",
        "Lcom/player/easy/ui/finished/FinishedItem;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "restoreSelection",
        "onDestroyView",
        "onMenuItemClick",
        "position",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
        "openFile",
        "forceStartFailedDownload",
        "redownloadFile",
        "showRemoveDownloadDialog",
        "shareFile",
        "onItemClick",
        "",
        "onItemLongClick",
        "toggleSelection",
        "createActionModeIfNeeded",
        "destroyActionModeIfNeeded",
        "onCreateActionMode",
        "mode",
        "menu",
        "Landroid/view/Menu;",
        "onPrepareActionMode",
        "onActionItemClicked",
        "item",
        "onDestroyActionMode",
        "onDetach",
        "showDeleteQueuesConfirmationDialog",
        "selectAll",
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
        "SMAP\nFinishedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FinishedFragment.kt\ncom/player/easy/ui/finished/FinishedFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n106#2,15:298\n1915#3,2:313\n1642#3,10:317\n1915#3:327\n1916#3:329\n1652#3:330\n257#4,2:315\n1#5:328\n*S KotlinDebug\n*F\n+ 1 FinishedFragment.kt\ncom/player/easy/ui/finished/FinishedFragment\n*L\n44#1:298,15\n92#1:313,2\n283#1:317,10\n283#1:327\n283#1:329\n283#1:330\n78#1:315,2\n283#1:328\n*E\n"
    }
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
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

.field private final binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

.field private final selectedDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/player/easy/ui/finished/FinishedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3r5qaZqzCWitoWAYFt7DI_5WWDQ(Lcom/player/easy/ui/finished/FinishedFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->onCreate$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AAS66BhkbbL0cu3to43uisFJ4GA(Lcom/player/easy/ui/finished/FinishedFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedFragment;->showDeleteQueuesConfirmationDialog$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EphPv9IUnxiOJZfMZBqjYCuEAA4(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lAWpgTphJ2GbLyLXoTm-_JZ-2h8(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/player/easy/ui/finished/FinishedFragment;->showRemoveDownloadDialog$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQfAcZhcN73UmojcC6X2drqfzYs(Lcom/player/easy/ui/finished/FinishedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->onViewCreated$lambda$1(Lcom/player/easy/ui/finished/FinishedFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/player/easy/ui/finished/FinishedFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/player/easy/databinding/FinishedFragmentBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/player/easy/ui/finished/FinishedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 37
    sget v0, Lcom/player/easy/R$layout;->finished_fragment:I

    .line 36
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 43
    sget-object v0, Lcom/player/easy/ui/finished/FinishedFragment$binding$2;->INSTANCE:Lcom/player/easy/ui/finished/FinishedFragment$binding$2;

    invoke-static {p0, v0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegateKt;->viewBinding(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    .line 299
    new-instance v0, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 303
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 304
    const-class v1, Lcom/player/easy/ui/finished/FinishedViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/player/easy/ui/finished/FinishedFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    return-void
.end method

.method private final createActionModeIfNeeded()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_2
    return-void
.end method

.method private final destroyActionModeIfNeeded()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private final forceStartFailedDownload(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/finished/FinishedItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/player/easy/ui/finished/FinishedViewModel;->forceStart(Lcom/tonyodev/fetch2/Download;)V

    .line 148
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getBinding()Lcom/player/easy/databinding/FinishedFragmentBinding;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    sget-object v1, Lcom/player/easy/ui/finished/FinishedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/player/easy/databinding/FinishedFragmentBinding;

    return-object v0
.end method

.method private final getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/finished/FinishedViewModel;

    return-object v0
.end method

.method private final onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 258
    sget v0, Lcom/player/easy/R$id;->action_remove:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->showDeleteQueuesConfirmationDialog()V

    goto :goto_0

    .line 259
    :cond_0
    sget v0, Lcom/player/easy/R$id;->action_select_all:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->selectAll()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 6

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/player/easy/ui/main/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/player/easy/ui/main/MainActivity;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getWasBackJustPressed()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 57
    invoke-virtual {v0, p0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    .line 58
    sget v1, Lcom/player/easy/R$string;->press_back_again:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 59
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda4;-><init>(Lcom/player/easy/ui/main/MainActivity;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 63
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/player/easy/ui/finished/FinishedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getBinding()Lcom/player/easy/databinding/FinishedFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/player/easy/databinding/FinishedFragmentBinding;->emptyText:Landroid/widget/LinearLayout;

    const-string v2, "emptyText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 315
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;)V

    .line 81
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->restoreSelection()V

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openFile(I)V
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/finished/FinishedItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/player/easy/util/storage/FileExtensionsKt;->getUriCompat(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getMimeType(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/player/easy/util/storage/MimeTypeUtils;->getCategory(Ljava/lang/String;)Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    move-result-object v3

    sget-object v4, Lcom/player/easy/util/storage/MimeTypeUtils$Category;->VIDEO:Lcom/player/easy/util/storage/MimeTypeUtils$Category;

    if-ne v3, v4, :cond_2

    .line 131
    sget-object v0, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v3, p1}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 141
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/player/easy/R$string;->app_not_found:I

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    :cond_3
    :goto_1
    return-void
.end method

.method private final redownloadFile(I)V
    .locals 7

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/finished/FinishedItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Lcom/player/easy/data/notification/NotificationReceiver;->Companion:Lcom/player/easy/data/notification/NotificationReceiver$Companion;

    invoke-interface {v6}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/data/notification/NotificationReceiver$Companion;->dismissNotification$app_release$default(Lcom/player/easy/data/notification/NotificationReceiver$Companion;Landroid/content/Context;ILjava/lang/Integer;ILjava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/player/easy/ui/finished/FinishedViewModel;->redownloadFile(Lcom/tonyodev/fetch2/Download;)V

    .line 156
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final restoreSelection()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 92
    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    .line 313
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/player/easy/ui/finished/FinishedItem;

    .line 93
    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 95
    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 101
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->createActionModeIfNeeded()V

    .line 102
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_4
    :goto_1
    return-void

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final selectAll()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 292
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->selectAll([Ljava/lang/Integer;)V

    .line 293
    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    const-string v2, "getCurrentItems(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final shareFile(I)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    check-cast p1, Lcom/player/easy/ui/finished/FinishedItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/player/easy/util/storage/FileExtensionsKt;->getUriCompat(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getMimeType(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    if-lt p1, v2, :cond_1

    .line 178
    :try_start_0
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 179
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 183
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private final showDeleteQueuesConfirmationDialog()V
    .locals 3

    .line 278
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 279
    sget v1, Lcom/player/easy/R$string;->confirm_delete_queues:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 280
    sget v1, Lcom/player/easy/R$string;->action_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 281
    sget v1, Lcom/player/easy/R$string;->action_ok:I

    new-instance v2, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/ui/finished/FinishedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showDeleteQueuesConfirmationDialog$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 283
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 317
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 326
    check-cast v0, Ljava/lang/Integer;

    .line 283
    iget-object v1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/finished/FinishedItem;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 326
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 284
    :cond_3
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/player/easy/ui/finished/FinishedViewModel;->deleteDownloads(Ljava/util/List;Z)V

    .line 285
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final showRemoveDownloadDialog(I)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/finished/FinishedItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 162
    sget v2, Lcom/player/easy/R$string;->dialog_action_remove_message:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 163
    sget v2, Lcom/player/easy/R$string;->action_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 164
    sget v2, Lcom/player/easy/R$string;->action_ok:I

    new-instance v3, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0}, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private static final showRemoveDownloadDialog$lambda$0(Lcom/player/easy/ui/finished/FinishedFragment;ILcom/player/easy/ui/finished/FinishedItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    iget-object p3, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(I)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/finished/FinishedViewModel;->removeDownload(Lcom/tonyodev/fetch2/Download;Z)V

    return-void
.end method

.method private final toggleSelection(I)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/finished/FinishedItem;

    if-nez v1, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 217
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 222
    :goto_0
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, p2}, Lcom/player/easy/ui/finished/FinishedFragment;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/ui/finished/FinishedFragment;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    return-void
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/player/easy/R$menu;->finished_selection:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->destroyActionModeIfNeeded()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->destroyActionModeIfNeeded()V

    .line 274
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 3

    .line 194
    iget-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 195
    :cond_0
    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/finished/FinishedItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/player/easy/ui/finished/FinishedItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/player/easy/ui/finished/FinishedFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 197
    invoke-direct {p0, p2}, Lcom/player/easy/ui/finished/FinishedFragment;->toggleSelection(I)V

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_2
    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p1

    sget-object v1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne p1, v1, :cond_3

    .line 201
    invoke-direct {p0, p2}, Lcom/player/easy/ui/finished/FinishedFragment;->openFile(I)V

    :cond_3
    :goto_0
    return v0
.end method

.method public onItemLongClick(I)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->createActionModeIfNeeded()V

    .line 209
    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->toggleSelection(I)V

    return-void
.end method

.method public onMenuItemClick(ILandroid/view/MenuItem;)V
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    .line 117
    sget v0, Lcom/player/easy/R$id;->action_open:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->openFile(I)V

    return-void

    .line 118
    :cond_0
    sget v0, Lcom/player/easy/R$id;->action_start:I

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->forceStartFailedDownload(I)V

    return-void

    .line 119
    :cond_1
    sget v0, Lcom/player/easy/R$id;->action_redownload:I

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->redownloadFile(I)V

    return-void

    .line 120
    :cond_2
    sget v0, Lcom/player/easy/R$id;->action_remove:I

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->showRemoveDownloadDialog(I)V

    return-void

    .line 121
    :cond_3
    sget v0, Lcom/player/easy/R$id;->action_share:I

    if-ne p2, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/player/easy/ui/finished/FinishedFragment;->shareFile(I)V

    :cond_4
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->destroyActionModeIfNeeded()V

    goto :goto_1

    .line 247
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    new-instance p1, Lcom/player/easy/ui/finished/FinishedAdapter;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/finished/FinishedAdapter;-><init>(Lcom/player/easy/ui/finished/FinishedFragment;)V

    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    .line 70
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getBinding()Lcom/player/easy/databinding/FinishedFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/player/easy/databinding/FinishedFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iget-object p2, p0, Lcom/player/easy/ui/finished/FinishedFragment;->adapter:Lcom/player/easy/ui/finished/FinishedAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    invoke-direct {p0}, Lcom/player/easy/ui/finished/FinishedFragment;->getViewModel()Lcom/player/easy/ui/finished/FinishedViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/finished/FinishedViewModel;->getFinished()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/finished/FinishedFragment$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/finished/FinishedFragment;)V

    new-instance v1, Lcom/player/easy/ui/finished/FinishedFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/player/easy/ui/finished/FinishedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
