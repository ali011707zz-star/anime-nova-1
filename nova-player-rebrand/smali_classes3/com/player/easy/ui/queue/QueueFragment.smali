.class public final Lcom/player/easy/ui/queue/QueueFragment;
.super Landroidx/fragment/app/Fragment;
.source "QueueFragment.kt"

# interfaces
.implements Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020%2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010*\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u001eH\u0002J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u0010/\u001a\u00020 2\u0006\u00100\u001a\u0002012\u0006\u0010\'\u001a\u00020(H\u0016J*\u00102\u001a\u000203\"\u0004\u0008\u0000\u00104*\u0008\u0012\u0004\u0012\u0002H4052\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u00020 07J\u001a\u00108\u001a\u00020\u001e2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020 2\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010:\u001a\u00020 2\u0006\u00100\u001a\u000201H\u0002J\u000e\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001c0<H\u0002J\u0008\u0010=\u001a\u00020 H\u0002J\u0008\u0010>\u001a\u00020 H\u0002J\u0018\u0010?\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020BH\u0016J\u0018\u0010C\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020BH\u0016J\u0018\u0010D\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020\u001e2\u0006\u0010E\u001a\u00020FH\u0002J\u0010\u0010G\u001a\u00020 2\u0006\u0010@\u001a\u00020\u0017H\u0016J\u0008\u0010H\u001a\u00020 H\u0016J\u0016\u0010I\u001a\u00020 2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u001c0<H\u0002J\u0008\u0010K\u001a\u00020 H\u0002J\u0016\u0010L\u001a\u00020 2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u001c0<H\u0002J\u0008\u0010M\u001a\u00020 H\u0002J\u0008\u0010N\u001a\u00020 H\u0002J\u0008\u0010O\u001a\u00020 H\u0002J\u0018\u0010P\u001a\u00020 2\u0006\u0010A\u001a\u00020B2\u0006\u0010Q\u001a\u00020RH\u0016J\u0008\u0010S\u001a\u00020 H\u0016R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/player/easy/ui/queue/QueueFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/player/easy/ui/queue/QueueAdapter$DownloadItemListener;",
        "Landroidx/appcompat/view/ActionMode$Callback;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/player/easy/databinding/FragmentQueueBinding;",
        "getBinding",
        "()Lcom/player/easy/databinding/FragmentQueueBinding;",
        "binding$delegate",
        "Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;",
        "viewModel",
        "Lcom/player/easy/ui/queue/QueueViewModel;",
        "getViewModel",
        "()Lcom/player/easy/ui/queue/QueueViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "adapter",
        "Lcom/player/easy/ui/queue/QueueAdapter;",
        "actionMode",
        "Landroidx/appcompat/view/ActionMode;",
        "untilDestroySubscriptions",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "selectedDownloads",
        "",
        "Lcom/player/easy/ui/queue/QueueItem;",
        "isRunning",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "onDownloadResumed",
        "download",
        "Lcom/tonyodev/fetch2/Download;",
        "onDownloadProgress",
        "onDownloadPaused",
        "onQueueStatusChange",
        "running",
        "getHolder",
        "Lcom/player/easy/ui/queue/QueueHolder;",
        "onDownloadActionClick",
        "position",
        "",
        "subscribeUntilDestroy",
        "Lio/reactivex/disposables/Disposable;",
        "T",
        "Lio/reactivex/Observable;",
        "onNext",
        "Lkotlin/Function1;",
        "onItemClick",
        "onItemLongClick",
        "toggleSelection",
        "getSelectedQueues",
        "",
        "createActionModeIfNeeded",
        "destroyActionModeIfNeeded",
        "onCreateActionMode",
        "mode",
        "menu",
        "Landroid/view/Menu;",
        "onPrepareActionMode",
        "onActionItemClicked",
        "item",
        "Landroid/view/MenuItem;",
        "onDestroyActionMode",
        "onDetach",
        "resumeDownloads",
        "selectedQueues",
        "showDeleteQueuesConfirmationDialog",
        "removeDownloads",
        "moveQueueUp",
        "moveQueueDown",
        "selectAll",
        "onCreateOptionsMenu",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onDestroyView",
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
        "SMAP\nQueueFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueueFragment.kt\ncom/player/easy/ui/queue/QueueFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,342:1\n106#2,15:343\n1#3:358\n1#3:370\n1#3:388\n1#3:402\n1#3:419\n1#3:433\n1642#4,10:359\n1915#4:369\n1916#4:371\n1652#4:372\n1586#4:373\n1661#4,3:374\n1642#4,10:377\n1915#4:387\n1916#4:389\n1652#4:390\n1642#4,10:391\n1915#4:401\n1916#4:403\n1652#4:404\n777#4:405\n873#4,2:406\n1642#4,10:408\n1915#4:418\n1916#4:420\n1652#4:421\n1642#4,10:422\n1915#4:432\n1916#4:434\n1652#4:435\n1915#4,2:438\n257#5,2:436\n*S KotlinDebug\n*F\n+ 1 QueueFragment.kt\ncom/player/easy/ui/queue/QueueFragment\n*L\n43#1:343,15\n190#1:370\n283#1:388\n296#1:402\n305#1:419\n317#1:433\n190#1:359,10\n190#1:369\n190#1:371\n190#1:372\n261#1:373\n261#1:374,3\n283#1:377,10\n283#1:387\n283#1:389\n283#1:390\n296#1:391,10\n296#1:401\n296#1:403\n296#1:404\n296#1:405\n296#1:406,2\n305#1:408,10\n305#1:418\n305#1:420\n305#1:421\n317#1:422,10\n317#1:432\n317#1:434\n317#1:435\n88#1:438,2\n82#1:436,2\n*E\n"
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

.field private adapter:Lcom/player/easy/ui/queue/QueueAdapter;

.field private final binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

.field private isRunning:Z

.field private final selectedDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Qzdn_m9lgSSDiYY_w1Dw-BSOjbY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->subscribeUntilDestroy$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNw1URcS96rtcJqLdhyxugtn4qQ(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/queue/QueueFragment;->onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5FZdUL0kJCpdjQV_SSkEviWPvc(Lcom/player/easy/ui/queue/QueueFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/queue/QueueFragment;->showDeleteQueuesConfirmationDialog$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gD4N_u4DwRc_YmKNXri2gbY7KOA(Lcom/player/easy/ui/queue/QueueFragment;Lcom/player/easy/ui/queue/QueuedUpdates;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onViewCreated$lambda$1(Lcom/player/easy/ui/queue/QueueFragment;Lcom/player/easy/ui/queue/QueuedUpdates;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kIeGt1NF2E6AR39UBL2Vhe0oMR0(Lcom/player/easy/ui/queue/QueueFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onCreate$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tPnGBsTxNF4Fz7EeQzc64M36bDE(Lcom/player/easy/ui/queue/QueueFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onViewCreated$lambda$2(Lcom/player/easy/ui/queue/QueueFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ym5R3IicsghpU4AW91e4KZb4DtM(Lcom/player/easy/ui/queue/QueueFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onViewCreated$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/player/easy/ui/queue/QueueFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/player/easy/ui/queue/QueueFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 36
    sget v0, Lcom/player/easy/R$layout;->fragment_queue:I

    .line 35
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 42
    sget-object v0, Lcom/player/easy/ui/queue/QueueFragment$binding$2;->INSTANCE:Lcom/player/easy/ui/queue/QueueFragment$binding$2;

    invoke-static {p0, v0}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegateKt;->viewBinding(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    .line 344
    new-instance v0, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 348
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 349
    const-class v1, Lcom/player/easy/ui/queue/QueueViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/player/easy/ui/queue/QueueFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 49
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    return-void
.end method

.method private final createActionModeIfNeeded()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_2

    .line 195
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
    iput-object v2, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_2
    return-void
.end method

.method private final destroyActionModeIfNeeded()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private final getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->binding$delegate:Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;

    sget-object v1, Lcom/player/easy/ui/queue/QueueFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/zhuinden/fragmentviewbindingdelegatekt/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/player/easy/databinding/FragmentQueueBinding;

    return-object v0
.end method

.method private final getHolder(Lcom/tonyodev/fetch2/Download;)Lcom/player/easy/ui/queue/QueueHolder;
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/FragmentQueueBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of v0, p1, Lcom/player/easy/ui/queue/QueueHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/player/easy/ui/queue/QueueHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getSelectedQueues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSelectedPositions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 368
    check-cast v3, Ljava/lang/Integer;

    .line 190
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    check-cast v3, Lcom/player/easy/ui/queue/QueueItem;

    if-eqz v3, :cond_1

    .line 368
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private final getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/queue/QueueViewModel;

    return-object v0
.end method

.method private final moveQueueDown()V
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSelectedPositions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 417
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentItems()Ljava/util/List;

    move-result-object v2

    const-string v3, "getCurrentItems(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 309
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-eq v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 311
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/player/easy/ui/queue/QueueItem;

    .line 312
    invoke-virtual {v0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 313
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    invoke-interface {v2, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 315
    invoke-virtual {v0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    goto :goto_1

    .line 317
    :cond_4
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 431
    check-cast v4, Lcom/player/easy/ui/queue/QueueItem;

    if-eqz v4, :cond_6

    .line 317
    invoke-virtual {v4}, Lcom/player/easy/ui/queue/QueueItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 431
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 318
    :cond_7
    invoke-virtual {v0, v2}, Lcom/player/easy/ui/queue/QueueAdapter;->updateDataSet(Ljava/util/List;)V

    .line 320
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/player/easy/ui/queue/QueueViewModel;->reorderQueue(Ljava/util/List;)V

    return-void
.end method

.method private final moveQueueUp()V
    .locals 10

    .line 282
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSelectedPositions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 386
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentItems()Ljava/util/List;

    move-result-object v1

    const-string v3, "getCurrentItems(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_3
    :goto_1
    if-ge v6, v4, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v8, v7, -0x1

    .line 289
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/player/easy/ui/queue/QueueItem;

    .line 290
    invoke-virtual {v0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 291
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    invoke-interface {v1, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 293
    invoke-virtual {v0, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 400
    check-cast v4, Lcom/player/easy/ui/queue/QueueItem;

    if-eqz v4, :cond_6

    .line 296
    invoke-virtual {v4}, Lcom/player/easy/ui/queue/QueueItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 400
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :cond_8
    :goto_4
    if-ge v6, v4, :cond_9

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    check-cast v8, Lcom/tonyodev/fetch2/Download;

    .line 296
    invoke-static {v8}, Lcom/player/easy/util/download/DownloadExtensionsKt;->isActiveDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 406
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 297
    :cond_9
    invoke-virtual {v0, v1}, Lcom/player/easy/ui/queue/QueueAdapter;->updateDataSet(Ljava/util/List;)V

    .line 299
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/player/easy/ui/queue/QueueViewModel;->reorderQueue(Ljava/util/List;)V

    return-void
.end method

.method private final onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 234
    sget v0, Lcom/player/easy/R$id;->action_resume:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getSelectedQueues()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->resumeDownloads(Ljava/util/List;)V

    goto :goto_0

    .line 235
    :cond_0
    sget v0, Lcom/player/easy/R$id;->action_remove:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->showDeleteQueuesConfirmationDialog()V

    goto :goto_0

    .line 236
    :cond_1
    sget v0, Lcom/player/easy/R$id;->action_up:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->moveQueueUp()V

    goto :goto_0

    .line 237
    :cond_2
    sget v0, Lcom/player/easy/R$id;->action_down:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->moveQueueDown()V

    goto :goto_0

    .line 238
    :cond_3
    sget v0, Lcom/player/easy/R$id;->action_select_all:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->selectAll()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 6

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
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

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getWasBackJustPressed()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    .line 60
    sget v1, Lcom/player/easy/R$string;->press_back_again:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 61
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda4;-><init>(Lcom/player/easy/ui/main/MainActivity;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    return-void
.end method

.method private final onDownloadPaused(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->getHolder(Lcom/tonyodev/fetch2/Download;)Lcom/player/easy/ui/queue/QueueHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/queue/QueueHolder;->notifyProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    return-void
.end method

.method private final onDownloadProgress(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->getHolder(Lcom/tonyodev/fetch2/Download;)Lcom/player/easy/ui/queue/QueueHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/queue/QueueHolder;->notifyProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    return-void
.end method

.method private final onDownloadResumed(Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->getHolder(Lcom/tonyodev/fetch2/Download;)Lcom/player/easy/ui/queue/QueueHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/queue/QueueHolder;->notifyProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    return-void
.end method

.method private final onQueueStatusChange(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->isRunning:Z

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/player/easy/databinding/FragmentQueueBinding;->emptyText:Landroid/widget/LinearLayout;

    const-string v2, "emptyText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 436
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/player/easy/ui/queue/QueueAdapter;->updateDataSet(Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 86
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 87
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->createActionModeIfNeeded()V

    .line 88
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    .line 438
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/queue/QueueItem;

    .line 89
    invoke-virtual {v0, v1}, Lcom/player/easy/ui/queue/QueueAdapter;->indexOf(Lcom/player/easy/ui/queue/QueueItem;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 90
    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    goto :goto_1

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 96
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Lcom/player/easy/ui/queue/QueueFragment;Lcom/player/easy/ui/queue/QueuedUpdates;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_4

    .line 101
    instance-of v0, p1, Lcom/player/easy/ui/queue/QueuedUpdates$Resume;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/player/easy/ui/queue/QueuedUpdates$Resume;

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Resume;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onDownloadResumed(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/player/easy/ui/queue/QueuedUpdates$Progress;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/player/easy/ui/queue/QueuedUpdates$Progress;

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Progress;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/player/easy/ui/queue/QueuedUpdates$Paused;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/player/easy/ui/queue/QueuedUpdates$Paused;

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueuedUpdates$Paused;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onDownloadPaused(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    .line 104
    :cond_2
    instance-of p0, p1, Lcom/player/easy/ui/queue/QueuedUpdates$Other;

    if-eqz p0, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 107
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$2(Lcom/player/easy/ui/queue/QueueFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 111
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->onQueueStatusChange(Z)V

    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final removeDownloads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/queue/QueueViewModel;->deleteDownloads(Ljava/util/List;)V

    .line 278
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final resumeDownloads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/queue/QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 375
    check-cast v1, Lcom/player/easy/ui/queue/QueueItem;

    .line 261
    invoke-virtual {v1}, Lcom/player/easy/ui/queue/QueueItem;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    .line 375
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/player/easy/ui/queue/QueueViewModel;->resume(Ljava/util/List;)V

    .line 263
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final selectAll()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->selectAll([Ljava/lang/Integer;)V

    .line 327
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/player/easy/ui/queue/QueueAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showDeleteQueuesConfirmationDialog()V
    .locals 3

    .line 267
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 268
    sget v1, Lcom/player/easy/R$string;->confirm_delete_queues:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 269
    sget v1, Lcom/player/easy/R$string;->action_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 270
    sget v1, Lcom/player/easy/R$string;->action_ok:I

    new-instance v2, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda5;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showDeleteQueuesConfirmationDialog$lambda$0(Lcom/player/easy/ui/queue/QueueFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getSelectedQueues()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->removeDownloads(Ljava/util/List;)V

    return-void
.end method

.method private static final subscribeUntilDestroy$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 157
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final toggleSelection(I)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/queue/QueueItem;

    if-nez v1, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 180
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

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

    .line 229
    invoke-direct {p0, p2}, Lcom/player/easy/ui/queue/QueueFragment;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

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

    .line 204
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/player/easy/R$menu;->queue_selection:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    sget v0, Lcom/player/easy/R$menu;->queue:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->selectedDownloads:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    .line 337
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 339
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->destroyActionModeIfNeeded()V

    .line 254
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDownloadActionClick(ILcom/tonyodev/fetch2/Download;)V
    .locals 0

    const-string p1, "download"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/player/easy/util/download/DownloadExtensionsKt;->isPausedOrAdded(Lcom/tonyodev/fetch2/Download;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel;->resume(Lcom/tonyodev/fetch2/Download;)V

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/player/easy/ui/queue/QueueViewModel;->pause(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/player/easy/ui/queue/QueueFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 163
    invoke-direct {p0, p2}, Lcom/player/easy/ui/queue/QueueFragment;->toggleSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public onItemLongClick(I)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->createActionModeIfNeeded()V

    .line 172
    invoke-direct {p0, p1}, Lcom/player/easy/ui/queue/QueueFragment;->toggleSelection(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->destroyActionModeIfNeeded()V

    goto :goto_1

    .line 215
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    sget p1, Lcom/player/easy/R$id;->action_resume:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    :cond_2
    sget p1, Lcom/player/easy/R$id;->action_remove:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 219
    :cond_3
    sget p1, Lcom/player/easy/R$id;->action_up:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    :cond_4
    sget p1, Lcom/player/easy/R$id;->action_down:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_1
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object p2, p0, Lcom/player/easy/ui/queue/QueueFragment;->untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/player/easy/ui/queue/QueueFragment;->untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 74
    :cond_0
    new-instance p2, Lcom/player/easy/ui/queue/QueueAdapter;

    invoke-direct {p2, p0}, Lcom/player/easy/ui/queue/QueueAdapter;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

    iput-object p2, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    .line 75
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/player/easy/databinding/FragmentQueueBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/player/easy/ui/queue/QueueFragment;->adapter:Lcom/player/easy/ui/queue/QueueAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/player/easy/databinding/FragmentQueueBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getBinding()Lcom/player/easy/databinding/FragmentQueueBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/player/easy/databinding/FragmentQueueBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 80
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueueViewModel;->getQueue()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

    new-instance v1, Lcom/player/easy/ui/queue/QueueFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/player/easy/ui/queue/QueueFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 98
    invoke-direct {p0}, Lcom/player/easy/ui/queue/QueueFragment;->getViewModel()Lcom/player/easy/ui/queue/QueueViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/queue/QueueViewModel;->getUpdate()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

    new-instance v1, Lcom/player/easy/ui/queue/QueueFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/player/easy/ui/queue/QueueFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 110
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    invoke-virtual {p1}, Lcom/player/easy/data/download/DownloadService$Companion;->getRunningRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/ui/queue/QueueFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/ui/queue/QueueFragment;->subscribeUntilDestroy(Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final subscribeUntilDestroy(Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/player/easy/ui/queue/QueueFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iget-object p2, p0, Lcom/player/easy/ui/queue/QueueFragment;->untilDestroySubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    const-string p2, "also(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
