.class public final Lcom/player/easy/ui/folders/FoldersFragment;
.super Landroidx/fragment/app/Fragment;
.source "FoldersFragment.kt"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\u000f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J-\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u000e\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%H\u0016\u00a2\u0006\u0002\u0010&J\u0012\u0010+\u001a\u00020\u001c2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u001a\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u0002002\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u00020-H\u0016J\u0008\u00103\u001a\u00020\u001cH\u0016J\u0008\u00104\u001a\u00020\u001cH\u0002J\u0018\u00105\u001a\u00020\u001c2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020\u001cH\u0002J\u0008\u0010>\u001a\u00020\u001cH\u0002J\u0010\u0010?\u001a\u00020\u001c2\u0006\u0010@\u001a\u00020#H\u0003J\u0008\u0010A\u001a\u00020\u001cH\u0002J\u0008\u0010B\u001a\u00020\u001cH\u0002J\u0008\u0010C\u001a\u00020\u001cH\u0016J\u001a\u0010D\u001a\u00020\u001a2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010E\u001a\u00020 H\u0016J\u0010\u0010F\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020 H\u0016J\u0010\u0010G\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020 H\u0002J\u000e\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00180IH\u0002J\u0008\u0010J\u001a\u00020\u001cH\u0002J\u0008\u0010K\u001a\u00020\u001cH\u0002J\u0018\u0010L\u001a\u00020\u001a2\u0006\u0010M\u001a\u00020\u00152\u0006\u00106\u001a\u000207H\u0016J\u0018\u0010N\u001a\u00020\u001a2\u0006\u0010M\u001a\u00020\u00152\u0006\u00106\u001a\u000207H\u0016J\u0018\u0010O\u001a\u00020\u001a2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010O\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J\u0010\u0010P\u001a\u00020\u001c2\u0006\u0010M\u001a\u00020\u0015H\u0016J\u0008\u0010Q\u001a\u00020\u001cH\u0016J\u0008\u0010R\u001a\u00020\u001cH\u0002J\u0016\u0010S\u001a\u00020\u001c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180IH\u0002J\u0008\u0010T\u001a\u00020\u001cH\u0002J\"\u0010U\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010V\u001a\u00020 2\u0008\u0010W\u001a\u0004\u0018\u00010)H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\'\u001a\u0010\u0012\u000c\u0012\n **\u0004\u0018\u00010)0)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/FoldersFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/appcompat/view/ActionMode$Callback;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/player/easy/ui/folders/FoldersViewModel;",
        "getViewModel",
        "()Lcom/player/easy/ui/folders/FoldersViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "sharedViewModel",
        "Lcom/player/easy/ui/main/SharedViewModel;",
        "getSharedViewModel",
        "()Lcom/player/easy/ui/main/SharedViewModel;",
        "sharedViewModel$delegate",
        "adapter",
        "Lcom/player/easy/ui/folders/FolderAdapter;",
        "actionMode",
        "Landroidx/appcompat/view/ActionMode;",
        "selectedFolders",
        "",
        "Lcom/player/easy/ui/folders/FolderItem;",
        "checkPermission",
        "",
        "requestStoragePermissions",
        "",
        "showStoragePermissionAreRequired",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "intentLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "onSaveInstanceState",
        "outState",
        "onResume",
        "getAllVideos",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "closeApplication",
        "showOpenNetworkUrlDialog",
        "showDownloadInfoDialog",
        "url",
        "openSettings",
        "openSearch",
        "onDestroyView",
        "onItemClick",
        "position",
        "onItemLongClick",
        "toggleSelection",
        "getSelectedVideos",
        "",
        "createActionModeIfNeeded",
        "destroyActionModeIfNeeded",
        "onCreateActionMode",
        "mode",
        "onPrepareActionMode",
        "onActionItemClicked",
        "onDestroyActionMode",
        "onDetach",
        "showDeleteVideosConfirmationDialog",
        "removeVideos",
        "selectAll",
        "onActivityResult",
        "resultCode",
        "data",
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
        "SMAP\nFoldersFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldersFragment.kt\ncom/player/easy/ui/folders/FoldersFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 9 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,693:1\n106#2,15:694\n172#2,9:709\n31#3:718\n257#4,2:719\n257#4,2:765\n1642#5,10:721\n1915#5:731\n1916#5:733\n1652#5:734\n812#5,12:735\n1512#5:747\n1538#5,3:748\n1541#5,3:758\n1#6:732\n383#7,7:751\n129#8:761\n158#8,3:762\n14081#9,2:767\n*S KotlinDebug\n*F\n+ 1 FoldersFragment.kt\ncom/player/easy/ui/folders/FoldersFragment\n*L\n77#1:694,15\n79#1:709,9\n402#1:718\n535#1:719,2\n307#1:765,2\n595#1:721,10\n595#1:731\n595#1:733\n595#1:734\n596#1:735,12\n306#1:747\n306#1:748,3\n306#1:758,3\n595#1:732\n306#1:751,7\n306#1:761\n306#1:762,3\n316#1:767,2\n*E\n"
    }
.end annotation


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lcom/player/easy/ui/folders/FolderAdapter;

.field private checkPermission:Z

.field private final intentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private final selectedFolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1QSCtki8aMY-PvieyEUfr4HloDA(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/IntentSender;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->onViewCreated$lambda$1(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/IntentSender;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3-OaLq7r7B8k5EhdpibLrRazQsc(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/player/easy/ui/folders/FoldersFragment;->showOpenNetworkUrlDialog$lambda$2(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3WV_kcjCae4gKWFs7Im28CQ_8zc(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersFragment;->showStoragePermissionAreRequired$lambda$1(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8wEQ9E6tI8yb9KWNhEuOmTWhyw(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/ui/folders/FoldersFragment;->showOpenNetworkUrlDialog$lambda$2$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmSwh2ZkfQGUN0vMZ_G2cQmy85w(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersFragment;->showStoragePermissionAreRequired$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X581PYA2_99ex-WpwyAfXSbrblg(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/player/easy/ui/folders/FoldersFragment;->showOpenNetworkUrlDialog$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bPl2JHklDZXdGwyunFp6j5TbC3g(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->showOpenNetworkUrlDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jBt2aHhNdi9MKdXKAhatZyXstHg(Lcom/player/easy/ui/folders/FoldersFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->onResume$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n0H_MFRAEjqQOlZ1flX0AwM3r4s(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;Lcom/player/easy/util/result/Result;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/ui/folders/FoldersFragment;->onViewCreated$lambda$0(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;Lcom/player/easy/util/result/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sW7awZtKW4Qvx0ArOeRlKDIh4Uw(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->onCreate$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tptJPP_Igp6sYiL0ISmcnLlsPhQ(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->intentLauncher$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-43hNU7XWIyhs827Ef25mASiWA(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNKaMPbIg0KDGmKDa85sBhwfSlg(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/folders/FoldersFragment;->showDeleteVideosConfirmationDialog$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 72
    sget v0, Lcom/player/easy/R$layout;->folders_fragment:I

    .line 71
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 695
    new-instance v0, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 699
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 700
    const-class v1, Lcom/player/easy/ui/folders/FoldersViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v5, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, p0, v0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 712
    const-class v0, Lcom/player/easy/ui/main/SharedViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, v4, p0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/folders/FoldersFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->sharedViewModel$delegate:Lkotlin/Lazy;

    .line 87
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->selectedFolders:Ljava/util/Set;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->checkPermission:Z

    .line 255
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda12;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->intentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getSharedViewModel(Lcom/player/easy/ui/folders/FoldersFragment;)Lcom/player/easy/ui/main/SharedViewModel;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final closeApplication()V
    .locals 3

    .line 395
    sget-object v0, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final createActionModeIfNeeded()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_2

    .line 601
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
    iput-object v2, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_2
    return-void
.end method

.method private final destroyActionModeIfNeeded()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private final getAllVideos()V
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/FoldersViewModel;->canReadSharedEntries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/FoldersViewModel;->loadVideos()V

    :cond_0
    return-void
.end method

.method private final getSelectedVideos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 594
    :cond_0
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSelectedPositions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 731
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 730
    check-cast v3, Ljava/lang/Integer;

    .line 595
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;

    if-eqz v3, :cond_1

    .line 730
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    instance-of v5, v4, Lcom/player/easy/ui/folders/FolderItem;

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private final getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->sharedViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/main/SharedViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/folders/FoldersViewModel;

    return-object v0
.end method

.method private static final intentLauncher$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 257
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/ui/folders/FoldersViewModel;->loadVideos()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 632
    sget v0, Lcom/player/easy/R$id;->action_remove:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showDeleteVideosConfirmationDialog()V

    goto :goto_0

    .line 633
    :cond_0
    sget v0, Lcom/player/easy/R$id;->action_select_all:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->selectAll()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 6

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
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

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getWasBackJustPressed()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 274
    invoke-virtual {v0, p0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    .line 275
    sget v1, Lcom/player/easy/R$string;->press_back_again:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 276
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda11;

    invoke-direct {p1, v0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda11;-><init>(Lcom/player/easy/ui/main/MainActivity;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 280
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$0$0(Lcom/player/easy/ui/main/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/player/easy/ui/main/MainActivity;->setWasBackJustPressed(Z)V

    return-void
.end method

.method private static final onResume$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Z)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 365
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 367
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;Lcom/player/easy/util/result/Result;)Lkotlin/Unit;
    .locals 8

    if-eqz p3, :cond_8

    .line 297
    instance-of v0, p3, Lcom/player/easy/util/result/Result$Loading;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto/16 :goto_4

    .line 300
    :cond_0
    instance-of v0, p3, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_8

    .line 301
    iget-object v0, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 302
    iget-object v0, p1, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-nez v0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 303
    :cond_1
    invoke-direct {p1}, Lcom/player/easy/ui/folders/FoldersFragment;->getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/player/easy/ui/main/SharedViewModel;->getVideos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 304
    invoke-direct {p1}, Lcom/player/easy/ui/folders/FoldersFragment;->getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/player/easy/ui/main/SharedViewModel;->getVideos()Ljava/util/List;

    move-result-object v3

    check-cast p3, Lcom/player/easy/util/result/Result$Success;

    invoke-virtual {p3}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-virtual {p3}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 747
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 748
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 749
    move-object v5, v4

    check-cast v5, Lcom/player/easy/ui/videos/VideoStore;

    .line 306
    invoke-virtual {v5}, Lcom/player/easy/ui/videos/VideoStore;->getParentName()Ljava/lang/String;

    move-result-object v5

    .line 751
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 750
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 754
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 758
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 761
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {p3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 762
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 306
    new-instance v5, Lcom/player/easy/ui/folders/FolderItem;

    new-instance v6, Lcom/player/easy/ui/videos/VideoFolder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v6, v7, v4}, Lcom/player/easy/ui/videos/VideoFolder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v5, v6}, Lcom/player/easy/ui/folders/FolderItem;-><init>(Lcom/player/easy/ui/videos/VideoFolder;)V

    .line 763
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_4
    iget-object p0, p0, Lcom/player/easy/databinding/FoldersFragmentBinding;->emptyStateContainer:Landroid/widget/LinearLayout;

    const-string v3, "emptyStateContainer"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-ne v3, v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 765
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {v0, p3}, Lcom/player/easy/ui/folders/FolderAdapter;->updateDataSet(Ljava/util/List;)V

    if-eqz p2, :cond_8

    .line 312
    const-string p0, "selected_position"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_8

    .line 314
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 315
    invoke-direct {p1}, Lcom/player/easy/ui/folders/FoldersFragment;->createActionModeIfNeeded()V

    .line 767
    array-length p2, p0

    :goto_3
    if-ge v2, p2, :cond_7

    aget p3, p0, v2

    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    .line 317
    invoke-virtual {v0, p3}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 318
    invoke-virtual {v0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 321
    :cond_7
    iget-object p0, p1, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 328
    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/IntentSender;)Lkotlin/Unit;
    .locals 9

    const-string v0, "intentSender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x1034

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 333
    invoke-virtual/range {v1 .. v8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 334
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openSearch()V
    .locals 3

    .line 534
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/player/easy/ui/main/MainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/player/easy/ui/main/MainActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 535
    :cond_1
    invoke-virtual {v0}, Lcom/player/easy/ui/main/MainActivity;->getBinding()Lcom/player/easy/databinding/ActivityMainBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/player/easy/databinding/ActivityMainBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v2, "bottomNav"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 719
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    sget v1, Lcom/player/easy/R$anim;->scale_in:I

    sget v2, Lcom/player/easy/R$anim;->no_anim:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 540
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 541
    sget v1, Lcom/player/easy/R$id;->fragment_container_view:I

    new-instance v2, Lcom/player/easy/ui/search/SearchFragment;

    invoke-direct {v2}, Lcom/player/easy/ui/search/SearchFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 542
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 544
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final openSettings()V
    .locals 3

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/player/easy/ui/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final removeVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;)V"
        }
    .end annotation

    .line 673
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->deleteFolders(Ljava/util/List;)V

    .line 676
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final requestStoragePermissions()V
    .locals 12

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 93
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-gt v1, v2, :cond_2

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const/16 v7, 0x22

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v9, "android.permission.READ_MEDIA_VIDEO"

    const/16 v10, 0x21

    if-ge v1, v10, :cond_3

    .line 104
    invoke-virtual {v0, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    :cond_3
    if-ne v1, v10, :cond_4

    .line 107
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    if-lt v1, v7, :cond_5

    .line 110
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    .line 112
    invoke-virtual {v0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    if-nez v2, :cond_b

    .line 116
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_9

    if-lt v1, v10, :cond_8

    .line 119
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v1, v7, :cond_9

    .line 121
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 124
    :cond_8
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_b
    :goto_4
    return-void
.end method

.method private final selectAll()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 681
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->selectAll([Ljava/lang/Integer;)V

    .line 682
    iget-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->selectedFolders:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/FolderAdapter;->getFolderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 683
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showDeleteVideosConfirmationDialog()V
    .locals 3

    .line 652
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 653
    sget v1, Lcom/player/easy/R$string;->confirm_delete_folders:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 654
    sget v1, Lcom/player/easy/R$string;->action_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 655
    sget v1, Lcom/player/easy/R$string;->action_ok:I

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showDeleteVideosConfirmationDialog$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 658
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p2, v0, :cond_1

    const/16 v0, 0x1d

    if-gt p2, v0, :cond_2

    .line 660
    :cond_1
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 663
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 667
    :cond_2
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getSelectedVideos()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->removeVideos(Ljava/util/List;)V

    return-void
.end method

.method private final showDownloadInfoDialog(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_1

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    .line 447
    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 454
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/player/easy/ui/folders/FoldersFragment$showDownloadInfoDialog$1;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final showOpenNetworkUrlDialog()V
    .locals 7

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 402
    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 403
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    move-object v1, v2

    .line 404
    :cond_2
    sget-object v4, Landroidx/core/util/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 405
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 408
    :goto_1
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 410
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 411
    sget v5, Lcom/player/easy/R$string;->open_with_internet:I

    invoke-virtual {v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    const-string v5, "setTitle(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget v5, Lcom/player/easy/R$string;->video_link_hint:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, v4}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v5, v1, v6}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt;->setTextInput(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 415
    sget v2, Lcom/player/easy/R$string;->action_ok:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 416
    sget v2, Lcom/player/easy/R$string;->cancel:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 417
    sget v2, Lcom/player/easy/R$string;->download:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 411
    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, v4, v0, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda7;-><init>(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 438
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 414
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p4, -0x1

    .line 421
    invoke-virtual {p0, p4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, -0x3

    .line 429
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance p4, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda5;

    invoke-direct {p4, p1, p3, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    .line 422
    iget-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "http"

    const/4 v3, 0x0

    invoke-static {p4, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 425
    :cond_0
    sget-object p4, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p1, p0, p0}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 426
    invoke-virtual {p2, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/folders/FoldersFragment;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    .line 430
    iget-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "http"

    const/4 v3, 0x0

    invoke-static {p3, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showDownloadInfoDialog(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private final showStoragePermissionAreRequired()V
    .locals 5

    .line 138
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 140
    sget v1, Lcom/player/easy/R$string;->storage_permission_required:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 142
    sget v1, Lcom/player/easy/R$string;->app_required:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/player/easy/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    sget v3, Lcom/player/easy/R$string;->storage_permission_needed_video:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 146
    sget v1, Lcom/player/easy/R$string;->close_app:I

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda9;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 147
    sget v1, Lcom/player/easy/R$string;->action_settings:I

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda10;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showStoragePermissionAreRequired$lambda$0(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->closeApplication()V

    return-void
.end method

.method private static final showStoragePermissionAreRequired$lambda$1(Lcom/player/easy/ui/folders/FoldersFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 148
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final toggleSelection(I)V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;

    if-nez v1, :cond_1

    goto :goto_1

    .line 582
    :cond_1
    instance-of v2, v1, Lcom/player/easy/ui/folders/FolderItem;

    if-nez v2, :cond_2

    goto :goto_1

    .line 583
    :cond_2
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 584
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 585
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->selectedFolders:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_3
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->selectedFolders:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 589
    :goto_0
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_4
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

    .line 627
    invoke-direct {p0, p2}, Lcom/player/easy/ui/folders/FoldersFragment;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x1034

    if-ne p1, p2, :cond_0

    .line 688
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "delete permission are granted"

    invoke-virtual {p1, p3, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getAllVideos()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 267
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 269
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/main/SharedViewModel;->getCurrentPath()Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda8;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

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

    .line 610
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/player/easy/R$menu;->finished_selection:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 611
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

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

    .line 380
    sget v0, Lcom/player/easy/R$menu;->folders:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 642
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->selectedFolders:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 643
    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 549
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->destroyActionModeIfNeeded()V

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    .line 551
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 647
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->destroyActionModeIfNeeded()V

    .line 648
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 3

    .line 555
    iget-object p1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 556
    :cond_0
    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;

    if-nez v1, :cond_1

    return v0

    .line 557
    :cond_1
    instance-of v2, v1, Lcom/player/easy/ui/folders/FolderItem;

    if-nez v2, :cond_2

    return v0

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/player/easy/ui/folders/FoldersFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 559
    invoke-direct {p0, p2}, Lcom/player/easy/ui/folders/FoldersFragment;->toggleSelection(I)V

    const/4 p1, 0x1

    return p1

    .line 562
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 563
    :cond_4
    check-cast v1, Lcom/player/easy/ui/folders/FolderItem;

    invoke-virtual {v1}, Lcom/player/easy/ui/folders/FolderItem;->getFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object p2

    invoke-static {p2}, Lcom/player/easy/ui/folders/FoldersFragmentKt;->setCurrentOpenedFolder(Lcom/player/easy/ui/videos/VideoFolder;)V

    .line 564
    sget-object p2, Lcom/player/easy/ui/videos/VideoActivity;->Companion:Lcom/player/easy/ui/videos/VideoActivity$Companion;

    invoke-virtual {p2, p1}, Lcom/player/easy/ui/videos/VideoActivity$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 565
    iget-object p2, p0, Lcom/player/easy/ui/folders/FoldersFragment;->intentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return v0
.end method

.method public onItemLongClick(I)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;

    if-nez v0, :cond_1

    goto :goto_0

    .line 573
    :cond_1
    instance-of v0, v0, Lcom/player/easy/ui/folders/FolderItem;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->createActionModeIfNeeded()V

    .line 576
    invoke-direct {p0, p1}, Lcom/player/easy/ui/folders/FoldersFragment;->toggleSelection(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 385
    sget v1, Lcom/player/easy/R$id;->action_close:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->closeApplication()V

    goto :goto_0

    .line 386
    :cond_0
    sget v1, Lcom/player/easy/R$id;->open_network_url:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showOpenNetworkUrlDialog()V

    goto :goto_0

    .line 387
    :cond_1
    sget v1, Lcom/player/easy/R$id;->action_settings:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->openSettings()V

    goto :goto_0

    .line 388
    :cond_2
    sget v1, Lcom/player/easy/R$id;->action_refresh:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getAllVideos()V

    goto :goto_0

    .line 389
    :cond_3
    sget v1, Lcom/player/easy/R$id;->action_search:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->openSearch()V

    .line 391
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    iget-object p2, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->destroyActionModeIfNeeded()V

    goto :goto_1

    .line 621
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 162
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget v0, p3, v1

    if-eqz v0, :cond_1

    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showStoragePermissionAreRequired()V

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 172
    array-length p1, p2

    move v0, v1

    move v2, v0

    :goto_1
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const/4 v7, 0x1

    if-ge v0, p1, :cond_c

    .line 173
    array-length v8, p3

    if-le v8, v0, :cond_b

    .line 174
    aget-object v8, p2, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x441dbb8c

    if-eq v9, v10, :cond_9

    const v6, -0x1833add0

    if-eq v9, v6, :cond_7

    const v3, 0x2a564637

    if-eq v9, v3, :cond_4

    const v3, 0x516a29a7

    if-eq v9, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 186
    :cond_3
    aget v3, p3, v0

    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 176
    :cond_5
    aget v2, p3, v0

    if-nez v2, :cond_6

    move v2, v7

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_2

    .line 174
    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    .line 183
    :cond_8
    aget v3, p3, v0

    goto :goto_2

    .line 174
    :cond_9
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    .line 180
    :cond_a
    aget v3, p3, v0

    :cond_b
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_c
    array-length p1, p2

    move v0, v1

    :goto_3
    if-ge v0, p1, :cond_16

    .line 204
    array-length v8, p3

    if-le v8, v0, :cond_15

    aget v8, p3, v0

    if-eqz v8, :cond_15

    .line 208
    aget-object v8, p2, v0

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v2, :cond_d

    goto :goto_4

    .line 223
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 225
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-gt p2, p3, :cond_e

    .line 228
    invoke-virtual {p1, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_f

    :cond_e
    move v1, v7

    :cond_f
    const/16 p3, 0x21

    if-ge p2, p3, :cond_10

    .line 233
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    if-lt p2, p3, :cond_11

    .line 236
    invoke-virtual {p1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_12

    :cond_11
    const/16 p3, 0x22

    if-lt p2, p3, :cond_13

    .line 239
    invoke-virtual {p1, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    if-eqz v1, :cond_13

    .line 243
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getAllVideos()V

    return-void

    .line 245
    :cond_13
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showStoragePermissionAreRequired()V

    return-void

    .line 248
    :cond_14
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->showStoragePermissionAreRequired()V

    return-void

    :cond_15
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 219
    :cond_16
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getAllVideos()V

    :cond_17
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 349
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 350
    sget-object v0, Lcom/player/easy/LogCycle;->INSTANCE:Lcom/player/easy/LogCycle;

    invoke-virtual {v0}, Lcom/player/easy/LogCycle;->getShouldRefreshFiles()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getAllVideos()V

    .line 352
    invoke-virtual {v0, v2}, Lcom/player/easy/LogCycle;->setShouldRefreshFiles(Z)V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->checkPermission:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    iput-boolean v2, p0, Lcom/player/easy/ui/folders/FoldersFragment;->checkPermission:Z

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    .line 359
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    sget-object v0, Lcom/player/easy/ui/NotificationPermissionDialog;->Companion:Lcom/player/easy/ui/NotificationPermissionDialog$Companion;

    invoke-virtual {v0, v1}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion;->shouldAsk(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    new-instance v0, Lcom/player/easy/ui/NotificationPermissionDialog;

    .line 362
    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    .line 363
    invoke-direct {v0, v1, v2}, Lcom/player/easy/ui/NotificationPermissionDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 368
    invoke-virtual {v0}, Lcom/player/easy/ui/NotificationPermissionDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    const-string v1, "selected_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 345
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 286
    invoke-static {p1}, Lcom/player/easy/databinding/FoldersFragmentBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/FoldersFragmentBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v1, Lcom/player/easy/ui/folders/FolderAdapter;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/folders/FolderAdapter;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    iput-object v1, p0, Lcom/player/easy/ui/folders/FoldersFragment;->adapter:Lcom/player/easy/ui/folders/FolderAdapter;

    .line 289
    iget-object v2, v0, Lcom/player/easy/databinding/FoldersFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 290
    iget-object v1, v0, Lcom/player/easy/databinding/FoldersFragmentBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    iget-object p1, v0, Lcom/player/easy/databinding/FoldersFragmentBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 294
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p0, p2}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/databinding/FoldersFragmentBinding;Lcom/player/easy/ui/folders/FoldersFragment;Landroid/os/Bundle;)V

    new-instance p2, Lcom/player/easy/ui/folders/FoldersFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p2, v2}, Lcom/player/easy/ui/folders/FoldersFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 330
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->getViewModel()Lcom/player/easy/ui/folders/FoldersViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/folders/FoldersViewModel;->getPermissionNeededForDelete()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    .line 332
    new-instance v0, Lcom/player/easy/util/result/EventObserver;

    .line 330
    new-instance v1, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/folders/FoldersFragment$$ExternalSyntheticLambda3;-><init>(Lcom/player/easy/ui/folders/FoldersFragment;)V

    .line 332
    invoke-direct {v0, v1}, Lcom/player/easy/util/result/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 330
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 337
    invoke-direct {p0}, Lcom/player/easy/ui/folders/FoldersFragment;->requestStoragePermissions()V

    return-void
.end method
