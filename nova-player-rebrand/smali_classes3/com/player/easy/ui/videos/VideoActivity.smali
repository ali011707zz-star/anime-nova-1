.class public final Lcom/player/easy/ui/videos/VideoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VideoActivity.kt"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/videos/VideoActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 ^2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001^B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0014J\u0010\u00103\u001a\u0002002\u0006\u00104\u001a\u000202H\u0014J\u001e\u00105\u001a\u0002002\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001e072\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u0010\u0010<\u001a\u0002092\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u000200H\u0002J\u0008\u0010@\u001a\u000200H\u0002J\u0010\u0010D\u001a\u0002002\u0006\u0010E\u001a\u00020CH\u0003J\u0008\u0010F\u001a\u000200H\u0014J\u001a\u0010G\u001a\u0002092\u0008\u0010H\u001a\u0004\u0018\u00010I2\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010L\u001a\u0002002\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010M\u001a\u0002002\u0006\u0010J\u001a\u00020KH\u0002J\u000e\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001e07H\u0002J\u0008\u0010O\u001a\u000200H\u0002J\u0008\u0010P\u001a\u000200H\u0002J\u0018\u0010Q\u001a\u0002092\u0006\u0010R\u001a\u00020\u001b2\u0006\u0010:\u001a\u00020;H\u0016J\u0018\u0010S\u001a\u0002092\u0006\u0010R\u001a\u00020\u001b2\u0006\u0010:\u001a\u00020;H\u0016J\u0018\u0010T\u001a\u0002092\u0006\u0010R\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010T\u001a\u0002092\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010U\u001a\u0002002\u0006\u0010R\u001a\u00020\u001bH\u0016J\u0008\u0010V\u001a\u000200H\u0002J\u0016\u0010W\u001a\u0002002\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e07H\u0002J\u0008\u0010X\u001a\u000200H\u0002J\"\u0010Y\u001a\u0002002\u0006\u0010Z\u001a\u00020K2\u0006\u0010[\u001a\u00020K2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u001b\u0010*\u001a\u00020+8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0012\u001a\u0004\u0008,\u0010-R\u0014\u0010A\u001a\u0008\u0012\u0004\u0012\u00020C0BX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006_"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/VideoActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/appcompat/view/ActionMode$Callback;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/player/easy/databinding/VideosActivityBinding;",
        "getBinding",
        "()Lcom/player/easy/databinding/VideosActivityBinding;",
        "setBinding",
        "(Lcom/player/easy/databinding/VideosActivityBinding;)V",
        "viewModel",
        "Lcom/player/easy/ui/videos/VideosViewModel;",
        "getViewModel",
        "()Lcom/player/easy/ui/videos/VideosViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "sharedViewModel",
        "Lcom/player/easy/ui/main/SharedViewModel;",
        "getSharedViewModel",
        "()Lcom/player/easy/ui/main/SharedViewModel;",
        "sharedViewModel$delegate",
        "adapter",
        "Lcom/player/easy/ui/videos/VideosAdapter;",
        "actionMode",
        "Landroidx/appcompat/view/ActionMode;",
        "selectedVideos",
        "",
        "Lcom/player/easy/ui/videos/VideoItem;",
        "videoFolder",
        "Lcom/player/easy/ui/videos/VideoFolder;",
        "getVideoFolder",
        "()Lcom/player/easy/ui/videos/VideoFolder;",
        "setVideoFolder",
        "(Lcom/player/easy/ui/videos/VideoFolder;)V",
        "sortedVideos",
        "",
        "Lcom/player/easy/ui/videos/VideoStore;",
        "getSortedVideos",
        "()Ljava/util/List;",
        "prefs",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "getPrefs",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "prefs$delegate",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "removeItems",
        "tobeDeleted",
        "",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "showOpenNetworkUrlDialog",
        "openSettings",
        "permissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "showDownloadInfoDialog",
        "url",
        "onDestroy",
        "onItemClick",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "onItemLongClick",
        "toggleSelection",
        "getSelectedVideos",
        "createActionModeIfNeeded",
        "destroyActionModeIfNeeded",
        "onCreateActionMode",
        "mode",
        "onPrepareActionMode",
        "onActionItemClicked",
        "onDestroyActionMode",
        "showDeleteVideosConfirmationDialog",
        "removeVideos",
        "selectAll",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "Companion",
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
        "SMAP\nVideoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoActivity.kt\ncom/player/easy/ui/videos/VideoActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,505:1\n75#2,13:506\n75#2,13:519\n17#3:532\n1586#4:533\n1661#4,3:534\n1586#4:541\n1661#4,3:542\n1642#4,10:549\n1915#4:559\n1916#4:561\n1652#4:562\n1586#4:563\n1661#4,3:564\n257#5,2:537\n257#5,2:545\n14081#6,2:539\n1#7:547\n1#7:560\n31#8:548\n*S KotlinDebug\n*F\n+ 1 VideoActivity.kt\ncom/player/easy/ui/videos/VideoActivity\n*L\n67#1:506,13\n69#1:519,13\n83#1:532\n124#1:533\n124#1:534,3\n166#1:541\n166#1:542,3\n397#1:549,10\n397#1:559\n397#1:561\n397#1:562\n195#1:563\n195#1:564,3\n125#1:537,2\n170#1:545,2\n134#1:539,2\n397#1:560\n205#1:548\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/ui/videos/VideoActivity$Companion;

.field private static final DELETE_PERMISSION_REQUEST:I = 0x1033


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lcom/player/easy/ui/videos/VideosAdapter;

.field public binding:Lcom/player/easy/databinding/VideosActivityBinding;

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private final prefs$delegate:Lkotlin/Lazy;

.field private final selectedVideos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedViewModel$delegate:Lkotlin/Lazy;

.field private final sortedVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation
.end field

.field public videoFolder:Lcom/player/easy/ui/videos/VideoFolder;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ANS1mwvQ3x1IkhMQ-iM988lm5LE(Lcom/player/easy/ui/videos/VideoActivity;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BHRA7RcSTRWpCjQ2DnGqcbWqgso(Lcom/player/easy/ui/videos/VideoActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->onCreate$lambda$4(Lcom/player/easy/ui/videos/VideoActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DIbG4tbsFI1qyD_X0kRbeQaOGt4(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher$lambda$0$1(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LeYTsdqM6ibaUT7fMn0HwMhblm0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->showOpenNetworkUrlDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LqDKJsxGlDNpGmbAIrkltmCD3aM(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/ui/videos/VideoActivity;->showOpenNetworkUrlDialog$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OHg48rCxQp35o9u6dl_d1zxRykw(Lcom/player/easy/ui/videos/VideoActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->onCreate$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuemTKlppQ3gHCIFBsezN34v4aA(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/ui/videos/VideoActivity;->showOpenNetworkUrlDialog$lambda$2$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2grOOUUU26W6AIjCPYlwUxZV6c(Lcom/player/easy/ui/videos/VideoActivity;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/videos/VideoActivity;->onOptionsItemSelected$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_gu-DxPdDs6PvBry_FlRybWVyNE(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/videos/VideoActivity;->showDeleteVideosConfirmationDialog$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k1m7UJtjX_fHud39XO7EZwcb0HU(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/ui/videos/VideoActivity;->showOpenNetworkUrlDialog$lambda$2(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vWRcWqt5w2uPf-6KlfgTxx9SuyE(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/IntentSender;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->onCreate$lambda$3(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/IntentSender;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w2fWJ0K7pMUuXpHkw0xT2kM2cT4(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher$lambda$0$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/ui/videos/VideoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/ui/videos/VideoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/ui/videos/VideoActivity;->Companion:Lcom/player/easy/ui/videos/VideoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 510
    new-instance v0, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 514
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/player/easy/ui/videos/VideosViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 516
    new-instance v3, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 518
    new-instance v4, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 514
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 67
    iput-object v1, p0, Lcom/player/easy/ui/videos/VideoActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 523
    new-instance v0, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 527
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/player/easy/ui/main/SharedViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 529
    new-instance v3, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v3, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 531
    new-instance v4, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v4, v5, p0}, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 527
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 69
    iput-object v1, p0, Lcom/player/easy/ui/videos/VideoActivity;->sharedViewModel$delegate:Lkotlin/Lazy;

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->selectedVideos:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    .line 532
    sget-object v0, Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/videos/VideoActivity$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->prefs$delegate:Lkotlin/Lazy;

    .line 249
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getSharedViewModel(Lcom/player/easy/ui/videos/VideoActivity;)Lcom/player/easy/ui/main/SharedViewModel;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final createActionModeIfNeeded()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method private final destroyActionModeIfNeeded()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private final getSelectedVideos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 397
    :cond_0
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSelectedPositions(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 558
    check-cast v3, Ljava/lang/Integer;

    .line 397
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    check-cast v3, Lcom/player/easy/ui/videos/VideoItem;

    if-eqz v3, :cond_1

    .line 558
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private final getSharedViewModel()Lcom/player/easy/ui/main/SharedViewModel;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sharedViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/main/SharedViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/player/easy/ui/videos/VideosViewModel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/videos/VideosViewModel;

    return-object v0
.end method

.method private final onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1

    .line 432
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 433
    sget v0, Lcom/player/easy/R$id;->action_remove:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->showDeleteVideosConfirmationDialog()V

    goto :goto_0

    .line 434
    :cond_0
    sget v0, Lcom/player/easy/R$id;->action_select_all:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->selectAll()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static final onCreate$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/IntentSender;)Lkotlin/Unit;
    .locals 9

    const-string v0, "intentSender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x1033

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 146
    invoke-virtual/range {v1 .. v8}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$4(Lcom/player/easy/ui/videos/VideoActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "tobeDeleted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/player/easy/ui/videos/VideoActivity;->removeItems(Ljava/util/List;Lcom/player/easy/databinding/VideosActivityBinding;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onOptionsItemSelected$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;)Lkotlin/Unit;
    .locals 4

    .line 191
    sget-object v0, Lcom/player/easy/ui/videos/VideoStore;->Companion:Lcom/player/easy/ui/videos/VideoStore$Companion;

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/player/easy/ui/videos/VideoFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/player/easy/data/preference/PreferencesHelper;->getFolderSorting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/player/easy/ui/videos/VideoStore$Companion;->setSorting(I)V

    .line 192
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 565
    check-cast v2, Lcom/player/easy/ui/videos/VideoStore;

    .line 195
    new-instance v3, Lcom/player/easy/ui/videos/VideoItem;

    invoke-direct {v3, v2}, Lcom/player/easy/ui/videos/VideoItem;-><init>(Lcom/player/easy/ui/videos/VideoStore;)V

    .line 565
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/player/easy/ui/videos/VideosAdapter;->updateDataSet(Ljava/util/List;)V

    .line 197
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openSettings()V
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/ui/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final permissionLauncher$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 251
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 253
    sget v0, Lcom/player/easy/R$string;->storage_permission_required:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 255
    sget v0, Lcom/player/easy/R$string;->app_required:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/player/easy/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    sget v2, Lcom/player/easy/R$string;->storage_permission_needed_video:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 259
    sget v0, Lcom/player/easy/R$string;->close_app:I

    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 263
    sget v0, Lcom/player/easy/R$string;->action_settings:I

    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static final permissionLauncher$lambda$0$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    sget-object p1, Lcom/player/easy/data/download/DownloadService;->Companion:Lcom/player/easy/data/download/DownloadService$Companion;

    invoke-virtual {p1, p0}, Lcom/player/easy/data/download/DownloadService$Companion;->stop(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final permissionLauncher$lambda$0$1(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 264
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 266
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final removeItems(Ljava/util/List;Lcom/player/easy/databinding/VideosActivityBinding;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;",
            "Lcom/player/easy/databinding/VideosActivityBinding;",
            ")V"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 543
    check-cast v3, Lcom/player/easy/ui/videos/VideoItem;

    .line 166
    invoke-virtual {v3}, Lcom/player/easy/ui/videos/VideoItem;->getVideo()Lcom/player/easy/ui/videos/VideoStore;

    move-result-object v3

    .line 543
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/player/easy/ui/videos/VideoFolder;->setChildren(Ljava/util/List;)V

    .line 170
    iget-object p2, p2, Lcom/player/easy/databinding/VideosActivityBinding;->emptyText:Landroid/widget/TextView;

    const-string v0, "emptyText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 545
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p2, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-nez p2, :cond_2

    return-void

    .line 172
    :cond_2
    invoke-virtual {p2}, Lcom/player/easy/ui/videos/VideosAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-virtual {p2, p1}, Lcom/player/easy/ui/videos/VideosAdapter;->updateDataSet(Ljava/util/List;)V

    .line 175
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "refresh"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 176
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private final removeVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoItem;",
            ">;)V"
        }
    .end annotation

    .line 472
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getViewModel()Lcom/player/easy/ui/videos/VideosViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/videos/VideosViewModel;->deleteVideos(Ljava/util/List;)V

    .line 475
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->destroyActionModeIfNeeded()V

    return-void
.end method

.method private final selectAll()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 480
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->selectAll([Ljava/lang/Integer;)V

    .line 481
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoActivity;->selectedVideos:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideosAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showDeleteVideosConfirmationDialog()V
    .locals 3

    .line 453
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 454
    sget v1, Lcom/player/easy/R$string;->confirm_delete_videos:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 455
    sget v1, Lcom/player/easy/R$string;->action_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 456
    sget v1, Lcom/player/easy/R$string;->action_ok:I

    new-instance v2, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda9;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showDeleteVideosConfirmationDialog$lambda$0(Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 458
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-gt p1, p2, :cond_0

    .line 459
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 462
    iget-object p0, p0, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getSelectedVideos()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->removeVideos(Ljava/util/List;)V

    return-void
.end method

.method private final showDownloadInfoDialog(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 277
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 284
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$showDownloadInfoDialog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/player/easy/ui/videos/VideoActivity$showDownloadInfoDialog$1;-><init>(Lcom/player/easy/ui/videos/VideoActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenStarted(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final showOpenNetworkUrlDialog()V
    .locals 6

    .line 548
    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 207
    :cond_1
    sget-object v3, Landroidx/core/util/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 211
    :goto_1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 214
    sget v4, Lcom/player/easy/R$string;->open_with_internet:I

    invoke-virtual {v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const-string v4, "setTitle(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget v4, Lcom/player/easy/R$string;->video_link_hint:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v4, v0, v5}, Lcom/player/easy/widget/materialdialogs/MaterialAlertDialogBuilderExtensionsKt;->setTextInput(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 218
    sget v1, Lcom/player/easy/R$string;->action_ok:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 219
    sget v1, Lcom/player/easy/R$string;->cancel:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 220
    sget v1, Lcom/player/easy/R$string;->download:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 214
    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v3, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda4;-><init>(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 217
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p3, -0x1

    .line 224
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, -0x3

    .line 232
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    .line 225
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

    .line 228
    :cond_0
    sget-object p3, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p1, p0, p0}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 229
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showOpenNetworkUrlDialog$lambda$2$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/player/easy/ui/videos/VideoActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    .line 233
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

    .line 236
    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/videos/VideoActivity;->showDownloadInfoDialog(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private final toggleSelection(I)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/videos/VideoItem;

    if-nez v1, :cond_1

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 387
    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->selectedVideos:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_2
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->selectedVideos:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 392
    :goto_0
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/player/easy/databinding/VideosActivityBinding;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->binding:Lcom/player/easy/databinding/VideosActivityBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method public final getSortedVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->videoFolder:Lcom/player/easy/ui/videos/VideoFolder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoFolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, p2}, Lcom/player/easy/ui/videos/VideoActivity;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 486
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x1033

    if-ne p1, p2, :cond_0

    .line 488
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "delete permission are granted"

    invoke-virtual {p1, p3, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getViewModel()Lcom/player/easy/ui/videos/VideosViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideosViewModel;->deletePendingVideosThumbnailCache()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/databinding/VideosActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/player/easy/ui/videos/VideoActivity;->setBinding(Lcom/player/easy/databinding/VideosActivityBinding;)V

    .line 89
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/databinding/VideosActivityBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    .line 93
    new-instance v2, Lcom/player/easy/ui/videos/VideoActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/videos/VideoActivity$onCreate$1;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    .line 91
    invoke-virtual {v0, p0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 101
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 102
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v2, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    :cond_0
    new-instance v0, Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-direct {v0, p0}, Lcom/player/easy/ui/videos/VideosAdapter;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    .line 106
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 109
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/player/easy/databinding/VideosActivityBinding;->fastScroller:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/SelectableAdapter;->setFastScroller(Leu/davidea/fastscroller/FastScroller;)V

    .line 111
    invoke-static {}, Lcom/player/easy/ui/folders/FoldersFragmentKt;->getCurrentOpenedFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, v0}, Lcom/player/easy/ui/videos/VideoActivity;->setVideoFolder(Lcom/player/easy/ui/videos/VideoFolder;)V

    .line 117
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 118
    sget-object v2, Lcom/player/easy/ui/videos/VideoStore;->Companion:Lcom/player/easy/ui/videos/VideoStore$Companion;

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/player/easy/data/preference/PreferencesHelper;->getFolderSorting(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/player/easy/ui/videos/VideoStore$Companion;->setSorting(I)V

    .line 119
    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/player/easy/ui/videos/VideoFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->sortedVideos:Ljava/util/List;

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 535
    check-cast v3, Lcom/player/easy/ui/videos/VideoStore;

    .line 124
    new-instance v4, Lcom/player/easy/ui/videos/VideoItem;

    invoke-direct {v4, v3}, Lcom/player/easy/ui/videos/VideoItem;-><init>(Lcom/player/easy/ui/videos/VideoStore;)V

    .line 535
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getBinding()Lcom/player/easy/databinding/VideosActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/player/easy/databinding/VideosActivityBinding;->emptyText:Landroid/widget/TextView;

    const-string v3, "emptyText"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 537
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/player/easy/ui/videos/VideosAdapter;->updateDataSet(Ljava/util/List;)V

    if-eqz p1, :cond_7

    .line 130
    const-string v0, "selected_position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_7

    .line 132
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 133
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->createActionModeIfNeeded()V

    .line 539
    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_6

    aget v1, p1, v4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 143
    :cond_7
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getViewModel()Lcom/player/easy/ui/videos/VideosViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideosViewModel;->getPermissionNeededForDelete()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/player/easy/util/result/EventObserver;

    .line 143
    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    .line 145
    invoke-direct {v0, v1}, Lcom/player/easy/util/result/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 143
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getViewModel()Lcom/player/easy/ui/videos/VideosViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideosViewModel;->getRemoveAction()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/player/easy/util/result/EventObserver;

    .line 150
    new-instance v1, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda7;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    .line 152
    invoke-direct {v0, v1}, Lcom/player/easy/util/result/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 150
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/player/easy/R$menu;->finished_selection:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 412
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/player/easy/R$menu;->videos:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 361
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->destroyActionModeIfNeeded()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    return-void
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->setMode(I)V

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->selectedVideos:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 3

    .line 366
    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 367
    :cond_0
    invoke-virtual {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    check-cast v1, Lcom/player/easy/ui/videos/VideoItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/player/easy/ui/videos/VideoItem;->getVideo()Lcom/player/easy/ui/videos/VideoStore;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->getMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 369
    invoke-direct {p0, p2}, Lcom/player/easy/ui/videos/VideoActivity;->toggleSelection(I)V

    const/4 p1, 0x1

    return p1

    .line 372
    :cond_2
    sget-object p1, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    invoke-virtual {p1, p0, v1}, Lcom/player/easy/player/ExoPlayerActivity$Companion;->intentSharedLocal(Landroid/content/Context;Lcom/player/easy/ui/videos/VideoStore;)Landroid/content/Intent;

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public onItemLongClick(I)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->createActionModeIfNeeded()V

    .line 380
    invoke-direct {p0, p1}, Lcom/player/easy/ui/videos/VideoActivity;->toggleSelection(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 186
    sget v1, Lcom/player/easy/R$id;->open_network_url:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->showOpenNetworkUrlDialog()V

    goto :goto_0

    .line 187
    :cond_0
    sget v1, Lcom/player/easy/R$id;->action_settings:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->openSettings()V

    goto :goto_0

    .line 188
    :cond_1
    sget v1, Lcom/player/easy/R$id;->sort_by:I

    if-ne v0, v1, :cond_2

    .line 189
    new-instance v0, Lcom/player/easy/ui/videos/ChangeSortingDialog;

    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoActivity;->getVideoFolder()Lcom/player/easy/ui/videos/VideoFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/ui/videos/VideoFolder;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/player/easy/ui/videos/VideoActivity$$ExternalSyntheticLambda8;-><init>(Lcom/player/easy/ui/videos/VideoActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/player/easy/ui/videos/ChangeSortingDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 200
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object p2, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/player/easy/ui/videos/VideoActivity;->destroyActionModeIfNeeded()V

    goto :goto_1

    .line 422
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoActivity;->adapter:Lcom/player/easy/ui/videos/VideosAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    const-string v1, "selected_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setBinding(Lcom/player/easy/databinding/VideosActivityBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->binding:Lcom/player/easy/databinding/VideosActivityBinding;

    return-void
.end method

.method public final setVideoFolder(Lcom/player/easy/ui/videos/VideoFolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/player/easy/ui/videos/VideoActivity;->videoFolder:Lcom/player/easy/ui/videos/VideoFolder;

    return-void
.end method
