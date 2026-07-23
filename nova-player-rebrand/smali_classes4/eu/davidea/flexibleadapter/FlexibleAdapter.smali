.class public abstract Leu/davidea/flexibleadapter/FlexibleAdapter;
.super Leu/davidea/flexibleadapter/AnimatorAdapter;
.source "FlexibleAdapter.java"

# interfaces
.implements Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;
    }
.end annotation


# static fields
.field private static ANIMATE_TO_LIMIT:I = 0x0

.field private static final AUTO_SCROLL_DELAY:J = 0x96L

.field private static final EXTRA_CHILD:Ljava/lang/String;

.field private static final EXTRA_FILTER:Ljava/lang/String;

.field private static final EXTRA_HEADERS:Ljava/lang/String;

.field private static final EXTRA_LEVEL:Ljava/lang/String;

.field private static final EXTRA_PARENT:Ljava/lang/String;

.field private static final EXTRA_STICKY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FlexibleAdapter"


# instance fields
.field protected final FILTER:I

.field protected final LOAD_MORE_COMPLETE:I

.field protected final UPDATE:I

.field private adjustSelected:Z

.field private autoMap:Z

.field private childSelected:Z

.field private collapseOnExpand:Z

.field private collapseSubLevels:Z

.field private diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field private diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

.field private endlessLoading:Z

.field private endlessScrollEnabled:Z

.field private filtering:Z

.field private headersShown:Z

.field private mAnimateToLimit:I

.field protected mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

.field private mEndlessPageSize:I

.field protected mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

.field private mEndlessScrollThreshold:I

.field private mEndlessTargetCount:I

.field private mExpandedFilterFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/davidea/flexibleadapter/FlexibleAdapter.FilterAsyncTask;"
        }
    .end annotation
.end field

.field private mFilterEntity:Ljava/io/Serializable;

.field protected mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

.field protected mHandler:Landroid/os/Handler;

.field private mHashItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

.field public mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

.field protected mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

.field protected mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mMinCollapsibleLevel:I

.field private mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mOldFilterEntity:Ljava/io/Serializable;

.field private mOriginalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/davidea/flexibleadapter/items/IFlexible;"
        }
    .end annotation
.end field

.field private mRestoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/FlexibleAdapter.RestoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollableFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollableHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLevel:I

.field private mStickyContainer:Landroid/view/ViewGroup;

.field private mStickyElevation:I

.field protected mStickyHeaderChangeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

.field private mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

.field private mStickyHeadersEnabled:Z

.field private mTempItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mTopEndless:Z

.field private mTypeInstances:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

.field private multiRange:Z

.field private notifyChangeOfUnfilteredItems:Z

.field private notifyMoveOfFilteredItems:Z

.field private parentSelected:Z

.field private permanentDelete:Z

.field private recursive:Z

.field private restoreSelection:Z

.field private scrollOnExpand:Z

.field private start:J

.field private time:J

.field private unlinkOnRemoveHeader:Z

.field private useDiffUtil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    const-class v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_parentSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_childSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_headersShown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_stickyHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_selectedLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_filter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 146
    sput v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->ANIMATE_TO_LIMIT:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;Z)V
    .locals 4

    .line 234
    invoke-direct {p0, p3}, Leu/davidea/flexibleadapter/AnimatorAdapter;-><init>(Z)V

    const/4 p3, 0x0

    .line 111
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->UPDATE:I

    const/4 v1, 0x2

    iput v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->FILTER:I

    const/16 v1, 0x8

    iput v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->LOAD_MORE_COMPLETE:I

    .line 117
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;

    invoke-direct {v3, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    .line 129
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    .line 132
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeadersEnabled:Z

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    .line 139
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    const-string v2, ""

    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    .line 144
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    .line 147
    sget v2, Leu/davidea/flexibleadapter/FlexibleAdapter;->ANIMATE_TO_LIMIT:I

    iput v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    .line 150
    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    const/4 v2, -0x1

    iput v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 151
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 159
    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    .line 160
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 239
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 242
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    .line 243
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    .line 245
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 253
    :cond_1
    new-instance p1, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;

    invoke-direct {p1, p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return p0
.end method

.method static synthetic access$1000(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    return-void
.end method

.method static synthetic access$102(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return p1
.end method

.method static synthetic access$1100(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performScroll(I)V

    return-void
.end method

.method static synthetic access$1200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    return p0
.end method

.method static synthetic access$1202(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    return p1
.end method

.method static synthetic access$1300(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    return-void
.end method

.method static synthetic access$1400(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;I)I
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursiveCollapse(ILjava/util/List;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    return p0
.end method

.method static synthetic access$1702(Leu/davidea/flexibleadapter/FlexibleAdapter;J)J
    .locals 0

    .line 90
    iput-wide p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->start:J

    return-wide p1
.end method

.method static synthetic access$1800(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->prepareItemsForUpdate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    return-void
.end method

.method static synthetic access$200(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    return-void
.end method

.method static synthetic access$2000(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItemsAsync(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    return-object p0
.end method

.method static synthetic access$2200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->executeNotifications(Leu/davidea/flexibleadapter/Payload;)V

    return-void
.end method

.method static synthetic access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-object p0
.end method

.method static synthetic access$2402(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .locals 0

    .line 90
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-object p1
.end method

.method static synthetic access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideProgressItem()V

    return-void
.end method

.method static synthetic access$302(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    return p1
.end method

.method static synthetic access$400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IHeader;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideHeader(ILeu/davidea/flexibleadapter/items/IHeader;)V

    return-void
.end method

.method static synthetic access$700(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;
    .locals 0

    .line 90
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    return-object p0
.end method

.method static synthetic access$800(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showProgressItem()V

    return-void
.end method

.method static synthetic access$900(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoScrollWithDelay(II)V

    return-void
.end method

.method private addSubItems(IILeu/davidea/flexibleadapter/items/IExpandable;Ljava/util/List;ZLjava/lang/Object;)Z
    .locals 0

    if-eqz p5, :cond_0

    .line 3177
    invoke-interface {p3}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p5

    if-nez p5, :cond_0

    .line 3178
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(I)I

    .line 3182
    :cond_0
    invoke-interface {p3}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p5

    if-eqz p5, :cond_1

    add-int/lit8 p5, p1, 0x1

    .line 3183
    invoke-direct {p0, p3, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getRecursiveSubItemCount(Leu/davidea/flexibleadapter/items/IExpandable;I)I

    move-result p2

    add-int/2addr p5, p2

    invoke-virtual {p0, p5, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p6, :cond_2

    .line 3186
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 3187
    invoke-virtual {p0, p1, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return p2
.end method

.method private adjustSelected(II)V
    .locals 7

    .line 5141
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    if-lez p2, :cond_0

    .line 5147
    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$14;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$14;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5153
    const-string v1, "+"

    goto :goto_0

    .line 5144
    :cond_0
    const-string v1, ""

    .line 5155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5156
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, p1, :cond_1

    .line 5158
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    .line 5159
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/SelectableAdapter;->addAdjustedSelection(I)Z

    move v3, v5

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 5164
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object v0, v1, v5

    const-string p2, "AdjustedSelected(%s)=%s"

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private declared-synchronized animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 2

    monitor-enter p0

    .line 4372
    :try_start_0
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    if-eqz v0, :cond_1

    .line 4373
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animate changes with DiffUtils! oldSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4374
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    if-nez p2, :cond_0

    .line 4375
    new-instance p2, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    invoke-direct {p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;-><init>()V

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4377
    :cond_0
    :goto_0
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p2, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->setItems(Ljava/util/List;Ljava/util/List;)V

    .line 4378
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    goto :goto_1

    .line 4380
    :cond_1
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateTo(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4382
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized animateTo(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 9

    monitor-enter p0

    .line 4400
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    if-gt v4, v5, :cond_0

    .line 4402
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Animate changes! oldSize=%s newSize=%s limit=%s"

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v7, v2, v1

    aput-object v8, v2, v0

    invoke-virtual {v4, v5, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4403
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4404
    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateRemovals(Ljava/util/List;Ljava/util/List;)V

    .line 4405
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateAdditions(Ljava/util/List;Ljava/util/List;)V

    .line 4406
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    if-eqz v0, :cond_2

    .line 4407
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateMovedItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4410
    :cond_0
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "NotifyDataSetChanged! oldSize=%s newSize=%s limit=%s"

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string v7, "0"

    :goto_0
    iget v8, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v7, v2, v1

    aput-object v8, v2, v0

    invoke-virtual {v4, v5, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4411
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4412
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4415
    :cond_2
    :goto_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-nez p1, :cond_3

    .line 4416
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->executeNotifications(Leu/davidea/flexibleadapter/Payload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4418
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private applyAndAnimateAdditions(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 4492
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4494
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 4495
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 4498
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4499
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4500
    iget-object v5, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v0

    aput-object v3, v7, v4

    const-string v6, "calculateAdditions add position=%s item=%s"

    invoke-virtual {v5, v6, v7}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4501
    iget-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    if-eqz v5, :cond_1

    .line 4503
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4504
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v5, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4507
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 4508
    invoke-interface {p1, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4510
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4512
    :goto_1
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v5, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-direct {v5, v1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4517
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4518
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "calculateAdditions total new=%s"

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyAndAnimateMovedItems(Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 4529
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 4530
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 4533
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4534
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    if-eq v4, v0, :cond_2

    .line 4536
    iget-object v5, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v2

    aput-object v7, v8, v1

    const-string v6, "calculateMovedItems fromPosition=%s toPosition=%s"

    invoke-virtual {v5, v6, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4537
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 4539
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4541
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4543
    :goto_1
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v6, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v7, 0x4

    invoke-direct {v6, v4, v0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(III)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4547
    :cond_3
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "calculateMovedItems total move=%s"

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyAndAnimateRemovals(Ljava/util/List;Ljava/util/List;)V
    .locals 10

    .line 4454
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyModifications(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 4457
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4459
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ltz v1, :cond_4

    .line 4460
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 4463
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4464
    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1

    .line 4465
    iget-object v7, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v3

    aput-object v6, v8, v2

    const-string v6, "calculateRemovals remove position=%s item=%s"

    invoke-virtual {v7, v6, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4466
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4467
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v7, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v8, 0x3

    invoke-direct {v7, v1, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4469
    :cond_1
    iget-boolean v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 4470
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4473
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isFiltering()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6, v7}, Leu/davidea/flexibleadapter/items/IFlexible;->shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4474
    :cond_2
    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4475
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v7, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-direct {v7, v1, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4480
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4481
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "calculateModifications total mod=%s"

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4482
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "calculateRemovals total out=%s"

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyModifications(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 4428
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v0, :cond_3

    .line 4430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4431
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 4432
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4433
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4436
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4438
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private autoScrollWithDelay(II)V
    .locals 3

    .line 5111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Leu/davidea/flexibleadapter/FlexibleAdapter$13;

    invoke-direct {v2, p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$13;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    .line 5137
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private createRestoreItemInfo(ILeu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 4

    .line 5022
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5023
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 5027
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5030
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    .line 5035
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    new-instance v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    invoke-direct {v2, p0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5036
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Recycled Item %s on position=%s"

    invoke-virtual {p2, p1, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createRestoreSubItemInfo(Leu/davidea/flexibleadapter/items/IExpandable;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 4

    const/4 v0, 0x0

    .line 5008
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v1

    .line 5009
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 5010
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    invoke-direct {v3, p0, p1, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5011
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    .line 5012
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object p1, v2, v3

    .line 5011
    const-string p1, "Recycled SubItem %s with Parent position=%s"

    invoke-virtual {p2, p1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized executeNotifications(Leu/davidea/flexibleadapter/Payload;)V
    .locals 8

    monitor-enter p0

    .line 4551
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4552
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Dispatching notifications"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4553
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->getNewItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 4554
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4555
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 4557
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v4, "Performing %s notifications"

    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v0, v4, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4558
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 4559
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    .line 4560
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    .line 4561
    iget v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->operation:I

    if-eq v5, v1, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 4575
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "notifyDataSetChanged!"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4576
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4572
    :cond_1
    iget v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->fromPosition:I

    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 4569
    :cond_2
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4566
    :cond_3
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 4563
    :cond_4
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 4580
    :cond_5
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4581
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    .line 4582
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    .line 4584
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->time:J

    .line 4585
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Animate changes DONE in %sms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4586
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private expand(IZZZ)I
    .locals 2

    .line 2612
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p4

    .line 2613
    invoke-virtual {p0, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2617
    :cond_0
    invoke-static {p4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2618
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 2625
    :cond_1
    throw v0

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 2633
    iget-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    iget p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseAll(I)I

    move-result p2

    if-lez p2, :cond_3

    .line 2634
    invoke-virtual {p0, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    :cond_3
    const/4 p2, 0x1

    .line 2639
    invoke-direct {p0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object p3

    .line 2640
    iget-object p4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    add-int/2addr p1, p2

    invoke-interface {p4, p1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2641
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 2643
    throw v0

    .line 2628
    :cond_4
    throw v0

    .line 2619
    :cond_5
    throw v0
.end method

.method private filterExpandableObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z
    .locals 0

    .line 4211
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4212
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4214
    throw p1
.end method

.method private declared-synchronized filterItemsAsync(Ljava/util/List;)V
    .locals 6

    monitor-enter p0

    .line 4126
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "filterItems with filterEntity=\"%s\""

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4128
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    .line 4130
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4132
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4136
    :cond_0
    :try_start_1
    invoke-direct {p0, v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z

    goto :goto_0

    .line 4138
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4140
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->resetFilterFlags(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4141
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    .line 4142
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 4143
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreScrollableHeadersAndFooters(Ljava/util/List;)V

    .line 4145
    :cond_2
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 4149
    :goto_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4150
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    .line 4151
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    .line 4155
    :cond_4
    iput-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4156
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z
    .locals 4

    .line 4178
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4182
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4187
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4188
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4190
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterExpandableObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4193
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/io/Serializable;)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_6

    .line 4197
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    .line 4198
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 4199
    :cond_4
    throw v2

    .line 4202
    :cond_5
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    xor-int/lit8 p2, v1, 0x1

    .line 4204
    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    return v1
.end method

.method private getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;
    .locals 3

    .line 5046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 5047
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5048
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    .line 5049
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5051
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5053
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 5055
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5056
    throw p1

    :cond_2
    return-object v0
.end method

.method private getRecursiveSubItemCount(Leu/davidea/flexibleadapter/items/IExpandable;I)I
    .locals 4

    .line 2507
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2510
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2512
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2513
    :cond_0
    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2514
    throw p1

    :cond_1
    return v1
.end method

.method private getViewTypeInstance(I)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 1

    .line 4985
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1
.end method

.method private hideHeader(ILeu/davidea/flexibleadapter/items/IHeader;)V
    .locals 4

    if-ltz p1, :cond_0

    .line 1648
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const-string v3, "Hiding header position=%s header=$s"

    invoke-virtual {v0, v3, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    invoke-interface {p2, v1}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 1651
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1652
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method private hideProgressItem()V
    .locals 3

    .line 2189
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2191
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onLoadMore     remove progressItem"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2192
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)V

    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)V

    :cond_1
    return-void
.end method

.method private initializeItemTouchHelper()V
    .locals 3

    .line 4600
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-nez v0, :cond_2

    .line 4601
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 4604
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-nez v0, :cond_0

    .line 4605
    new-instance v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;-><init>(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    .line 4606
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initialized default ItemTouchHelperCallback"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4608
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 4609
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 4602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView cannot be null. Enabling LongPressDrag or Swipe must be done after the Adapter has been attached to the RecyclerView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V
    .locals 0

    .line 1691
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private mapViewTypeFrom(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 4

    .line 4971
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4972
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4973
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Mapped viewType %s from %s"

    invoke-virtual {v0, p1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private noMoreLoad(I)V
    .locals 2

    .line 2204
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "noMoreLoad!"

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2207
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private performInsert(ILjava/util/List;Z)V
    .locals 4

    .line 3020
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3022
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 3024
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 3029
    iget-object p3, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "addItems on position=%s itemCount=%s"

    invoke-virtual {p3, v0, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3030
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    return-void
.end method

.method private performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 1

    .line 3353
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3355
    iput-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    .line 3357
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(I)V

    .line 3358
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return-void
.end method

.method private performScroll(I)V
    .locals 2

    .line 5104
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5105
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private prepareItemsForUpdate(Ljava/util/List;)V
    .locals 3

    .line 5660
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v0, :cond_0

    .line 5661
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->discardBoundViewHolders()V

    .line 5664
    :cond_0
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreScrollableHeadersAndFooters(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 5670
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5671
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5673
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5685
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 5686
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 5688
    :cond_1
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5674
    :cond_2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5675
    throw p1

    :cond_3
    return-void
.end method

.method private recursiveCollapse(ILjava/util/List;I)I
    .locals 1

    .line 2813
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 2814
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2815
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2816
    :cond_0
    invoke-static {p3}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2817
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private resetFilterFlags(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4273
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4274
    invoke-interface {v2, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 4275
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4276
    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 4278
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    :cond_1
    throw v0

    .line 4302
    :cond_2
    iget-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v3, :cond_3

    .line 4303
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private restoreScrollableHeadersAndFooters(Ljava/util/List;)V
    .locals 3

    .line 1142
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 1143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 1144
    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1146
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setStickyHeadersHelper(Z)V
    .locals 3

    .line 1418
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1420
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    if-nez p1, :cond_0

    .line 1421
    new-instance p1, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v1, v2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    .line 1426
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1427
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Sticky headers enabled"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1428
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    if-eqz p1, :cond_1

    .line 1429
    invoke-virtual {p1}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->detachFromRecyclerView()V

    .line 1430
    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    .line 1431
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Sticky headers disabled"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private showAllHeaders(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1522
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "showAllHeaders at startup"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1524
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    return-void

    .line 1526
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "showAllHeaders with insert notification (in Post!)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1528
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$5;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showAllHeadersWithReset(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1558
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 1559
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    .line 1561
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    .line 1566
    invoke-direct {p0, v0, v1, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    .line 1571
    :cond_1
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return-void
.end method

.method private showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z
    .locals 0

    .line 1584
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    const/4 p1, 0x0

    return p1
.end method

.method private showOrUpdateHeaders(Ljava/util/List;)V
    .locals 3

    .line 3039
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3040
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    .line 3042
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3043
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3044
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 3045
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    goto :goto_0

    .line 3059
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3060
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3061
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3063
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    :cond_2
    return-void
.end method

.method private showProgressItem()V
    .locals 3

    .line 2176
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2177
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onLoadMore     show progressItem"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2178
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    return-void

    .line 2181
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    return-void
.end method


# virtual methods
.method public addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2975
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addItem No item to add!"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 2978
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "addItem delegates addition to addItems!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2979
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public addItem(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 2957
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;I)I
    .locals 10

    .line 3267
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "addItemToSection relativePosition=%s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3268
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v5

    if-ltz p3, :cond_1

    .line 3270
    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/ISectionable;->setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V

    if-ltz v5, :cond_0

    .line 3271
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    .line 3272
    sget-object v9, Leu/davidea/flexibleadapter/Payload;->ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    move-object v4, p0

    move-object v7, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, p0

    move-object v7, p1

    move v6, p3

    add-int/2addr v5, v2

    add-int/2addr v5, v6

    .line 3274
    invoke-virtual {p0, v5, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object v7, p1

    .line 3277
    :goto_0
    invoke-virtual {p0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    return p1
.end method

.method public addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/ISectionable;",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 3241
    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3242
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v0

    .line 3243
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3245
    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3247
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    goto :goto_0

    .line 3249
    :cond_0
    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p3

    .line 3251
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;I)I

    move-result p1

    return p1
.end method

.method public addItemWithDelay(ILeu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "JZ)V"
        }
    .end annotation

    .line 2938
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$9;

    invoke-direct {v1, p0, p1, p2, p5}, Leu/davidea/flexibleadapter/FlexibleAdapter$9;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addItems(ILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 2999
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3003
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v1

    if-gez p1, :cond_1

    .line 3005
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "addItems Position is negative! adding items to the end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3006
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :cond_1
    const/4 v0, 0x1

    .line 3009
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 3011
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showOrUpdateHeaders(Ljava/util/List;)V

    return v0

    .line 3000
    :cond_2
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addItems No items to add!"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public addListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 268
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Invalid listener class: null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 271
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "Adding listener class %s as:"

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemClickListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    .line 275
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 276
    invoke-virtual {v2}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 279
    :cond_1
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemLongClickListener"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    check-cast p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    .line 283
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 284
    invoke-virtual {v0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final addScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "Add scrollable footer %s"

    invoke-virtual {v0, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    invoke-interface {p1, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setSelectable(Z)V

    .line 975
    invoke-interface {p1, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setDraggable(Z)V

    .line 976
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lez v0, :cond_1

    .line 978
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 979
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 981
    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :goto_1
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    return v1

    .line 986
    :cond_2
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Scrollable footer %s already added"

    invoke-virtual {v0, p1, v1}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final addScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "JZ)V"
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Enqueued adding scrollable footer (%sms) %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$2;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$2;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final addScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Add scrollable header %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    invoke-interface {p1, v4}, Leu/davidea/flexibleadapter/items/IFlexible;->setSelectable(Z)V

    .line 935
    invoke-interface {p1, v4}, Leu/davidea/flexibleadapter/items/IFlexible;->setDraggable(Z)V

    .line 936
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    .line 937
    :goto_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    .line 939
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 940
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    return v2

    .line 943
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Scrollable header %s already added"

    invoke-virtual {v0, p1, v1}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final addScrollableHeaderWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "JZ)V"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Enqueued adding scrollable header (%sms) %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$1;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$1;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addSection(Leu/davidea/flexibleadapter/items/IHeader;)I
    .locals 1

    const/4 v0, 0x0

    .line 3200
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSection(Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public addSection(Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    .line 3219
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p2

    .line 3220
    invoke-virtual {p0, p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    return p2
.end method

.method public addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    .line 3077
    sget-object v5, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Z",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 3101
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addSubItem No items to add!"

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p4}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 3105
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItems(IILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    .line 3118
    sget-object v5, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;Z",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3141
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 3142
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3143
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 3144
    invoke-direct/range {v2 .. v8}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILeu/davidea/flexibleadapter/items/IExpandable;Ljava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    move-object v2, p0

    .line 3146
    iget-object p1, v2, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addSubItems Provided parentPosition doesn\'t belong to an Expandable item!"

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p4}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method

.method public areHeadersShown()Z
    .locals 1

    .line 1304
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return v0
.end method

.method public areHeadersSticky()Z
    .locals 1

    .line 1314
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 856
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 857
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 858
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_1
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 861
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string v2, "Calculated position %s for item=%s"

    invoke-virtual {p2, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 3294
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "clearAll views"

    invoke-virtual {v0, v3, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3295
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllScrollableHeaders()V

    .line 3296
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllScrollableFooters()V

    .line 3297
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public varargs clearAllBut([Ljava/lang/Integer;)V
    .locals 4

    .line 3312
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3313
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "clearAll retaining views %s"

    invoke-virtual {v0, v3, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3315
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3316
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3318
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3323
    :cond_1
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 538
    invoke-super {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->clearSelection()V

    return-void
.end method

.method public collapse(I)I
    .locals 1

    const/4 v0, 0x0

    .line 2746
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(IZ)I

    move-result p1

    return p1
.end method

.method public collapse(IZ)I
    .locals 0

    .line 2759
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 2760
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2764
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2766
    invoke-direct {p0, p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object p1

    .line 2767
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2770
    throw p2
.end method

.method public collapseAll()I
    .locals 1

    .line 2836
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseAll(I)I

    move-result v0

    return v0
.end method

.method public collapseAll(I)I
    .locals 2

    const/4 v0, 0x0

    .line 2849
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursiveCollapse(ILjava/util/List;I)I

    move-result p1

    return p1
.end method

.method public confirmDeletion()V
    .locals 3

    .line 3807
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "confirmDeletion!"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3808
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3809
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3811
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->emptyBin()V

    return-void
.end method

.method public contains(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized emptyBin()V
    .locals 3

    monitor-enter p0

    .line 3822
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "emptyBin!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3823
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3824
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3825
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ensureHeaderParent()V
    .locals 1

    .line 1333
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->ensureHeaderParent()V

    :cond_0
    return-void
.end method

.method public expand(I)I
    .locals 1

    const/4 v0, 0x0

    .line 2536
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZ)I

    move-result p1

    return p1
.end method

.method public expand(IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 2553
    invoke-direct {p0, p1, v0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expand(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")I"
        }
    .end annotation

    .line 2571
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expand(Leu/davidea/flexibleadapter/items/IFlexible;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Z)I"
        }
    .end annotation

    .line 2593
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expandAll()I
    .locals 1

    .line 2698
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expandAll(I)I

    move-result v0

    return v0
.end method

.method public expandAll(I)I
    .locals 3

    .line 2714
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2715
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 2716
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    .line 2717
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2718
    :cond_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2719
    throw p1

    :cond_1
    return v0
.end method

.method public expandItemsAtStartUp()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    .line 423
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    const/4 v1, 0x0

    move v2, v1

    .line 424
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 425
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    .line 426
    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 427
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 429
    :cond_0
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    invoke-direct {p0, v2, v1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_2
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 437
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->setScrollAnimate(Z)V

    return-object p0
.end method

.method public filterItems()V
    .locals 1

    .line 4036
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4037
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    .line 4039
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems(Ljava/util/List;)V

    return-void
.end method

.method public filterItems(J)V
    .locals 1

    .line 4055
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4056
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    .line 4058
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems(Ljava/util/List;J)V

    return-void
.end method

.method public filterItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)V"
        }
    .end annotation

    .line 4121
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4122
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public filterItems(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;J)V"
        }
    .end annotation

    .line 4078
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4079
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/io/Serializable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Ljava/io/Serializable;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCardinalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 1

    .line 776
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    .line 777
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 778
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final getCurrentChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3911
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3916
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3918
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3919
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    .line 3912
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final getCurrentItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDeletedChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 3890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3891
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3892
    iget-object v3, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    if-ltz v3, :cond_0

    .line 3893
    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDeletedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 3841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3842
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3843
    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEndlessCurrentPage()I
    .locals 4

    .line 1912
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    if-lez v0, :cond_0

    .line 1913
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEndlessPageSize()I
    .locals 1

    .line 1928
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    return v0
.end method

.method public getEndlessTargetCount()I
    .locals 1

    .line 1958
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    return v0
.end method

.method public getExpandableOf(I)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 0

    .line 2371
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Leu/davidea/flexibleadapter/items/IExpandable;"
        }
    .end annotation

    .line 2386
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2387
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2388
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 2389
    throw v1

    :cond_1
    return-object v1
.end method

.method public final getExpandableOfDeletedChild(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Leu/davidea/flexibleadapter/items/IExpandable;"
        }
    .end annotation

    .line 3873
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3874
    iget-object v3, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3875
    iget-object p1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_1
    return-object v2
.end method

.method public getExpandablePositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")I"
        }
    .end annotation

    .line 2414
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    return p1
.end method

.method public getExpandedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 2468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2469
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2470
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2471
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getExpandedPositions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2488
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2489
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2491
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFilter(Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)TF;"
        }
    .end annotation

    .line 3985
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method public final getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getHeaderItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ">;"
        }
    .end annotation

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 1181
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Leu/davidea/flexibleadapter/items/IHeader;"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/items/IFlexible;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 634
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(ILjava/lang/Class;)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">(I",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 651
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 682
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final varargs getItemCountOfTypes([Ljava/lang/Integer;)I
    .locals 3

    .line 714
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 716
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 717
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 663
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 1

    .line 4621
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4622
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object v0
.end method

.method public final getItemTouchHelperCallback()Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
    .locals 1

    .line 4634
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4635
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1740
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v1

    const-string p1, "Item for ViewType not found! position=%s, items=%s"

    invoke-virtual {v0, p1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 1746
    :cond_0
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->mapViewTypeFrom(Leu/davidea/flexibleadapter/items/IFlexible;)V

    .line 1747
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    .line 1748
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public final getMainItemCount()I
    .locals 2

    .line 700
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMinCollapsibleLevel()I
    .locals 1

    .line 2330
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    return v0
.end method

.method public final getSameTypePositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 5

    .line 797
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 798
    invoke-interface {v2}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v3

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 800
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return v1
.end method

.method public final getScrollableFooters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getScrollableHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;
    .locals 3

    .line 1245
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-ltz p1, :cond_2

    .line 1250
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 1251
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSectionItemPositions(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1289
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1290
    :goto_0
    invoke-virtual {p0, v2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 1292
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/ISectionable;",
            ">;"
        }
    .end annotation

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1269
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1270
    :goto_0
    invoke-virtual {p0, v2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 1272
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSiblingsOf(Leu/davidea/flexibleadapter/items/IFlexible;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation

    .line 2454
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2455
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getStickyHeaderElevation()I
    .locals 1

    .line 1446
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyElevation:I

    return v0
.end method

.method public final getStickyPosition()I
    .locals 1

    .line 1324
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSubPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")I"
        }
    .end annotation

    .line 2438
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSiblingsOf(Leu/davidea/flexibleadapter/items/IFlexible;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTime()J
    .locals 2

    .line 4592
    iget-wide v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->time:J

    return-wide v0
.end method

.method public getUndoPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3854
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 3

    .line 3933
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3934
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    const/4 p1, 0x0

    return p1
.end method

.method public hasNewFilter(Ljava/io/Serializable;)Z
    .locals 3

    .line 3947
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3948
    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 3950
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")Z"
        }
    .end annotation

    .line 1217
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    const/4 p1, 0x0

    return p1
.end method

.method public hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2357
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideAllHeaders()V
    .locals 2

    .line 1609
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$6;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$6;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final invalidateItemDecorations(J)V
    .locals 2

    .line 5176
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$15;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$15;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isAnimateChangesWithDiffUtil()Z
    .locals 1

    .line 4339
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    return v0
.end method

.method public isAnyChildSelected()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    return v0
.end method

.method public isAnyParentSelected()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    return v0
.end method

.method public isAutoCollapseOnExpand()Z
    .locals 1

    .line 2223
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    return v0
.end method

.method public isAutoScrollOnExpand()Z
    .locals 1

    .line 2273
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 745
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndlessScrollEnabled()Z
    .locals 1

    .line 1899
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    return v0
.end method

.method public isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isExpanded(I)Z
    .locals 0

    .line 2299
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 2311
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public isFiltering()Z
    .locals 1

    .line 4162
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    return v0
.end method

.method public final isHandleDragEnabled()Z
    .locals 1

    .line 4700
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isHandleDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isItemEnabled(I)Z
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isLongPressDragEnabled()Z
    .locals 1

    .line 4666
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isLongPressDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentDelete()Z
    .locals 1

    .line 3690
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return v0
.end method

.method public isRecursiveCollapse()Z
    .locals 1

    .line 2247
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    return v0
.end method

.method public final declared-synchronized isRestoreInTime()Z
    .locals 1

    monitor-enter p0

    .line 3832
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRestoreWithSelection()Z
    .locals 1

    .line 3717
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    return v0
.end method

.method public final isScrollableHeaderOrFooter(I)Z
    .locals 0

    .line 896
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 897
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public final isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 908
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isSelectable(I)Z
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 467
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    .line 4730
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isItemViewSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTopEndless()Z
    .locals 1

    .line 1876
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 1

    .line 4764
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->MOVE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->moveItem(IILjava/lang/Object;)V

    return-void
.end method

.method public moveItem(IILjava/lang/Object;)V
    .locals 5

    .line 4779
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "moveItem fromPosition=%s toPosition=%s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4781
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4782
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    .line 4783
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->addSelection(I)Z

    .line 4785
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 4787
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4789
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    .line 4792
    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4793
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v2, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 4794
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    if-eqz p3, :cond_2

    .line 4796
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 4799
    :cond_2
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p1, :cond_3

    .line 4800
    invoke-direct {p0, p2, v0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    :cond_3
    if-eqz v1, :cond_4

    .line 4804
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(I)I

    :cond_4
    return-void
.end method

.method public onActionStateChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 389
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 390
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Attached Adapter to RecyclerView"

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeadersEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 393
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeadersHelper(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 1804
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    if-eqz v0, :cond_1

    .line 1809
    invoke-super {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/SelectableAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1811
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1814
    invoke-interface {v0, p0, p1, p2, p3}, Leu/davidea/flexibleadapter/items/IFlexible;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1817
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->isFastScroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1818
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p3

    invoke-interface {p3}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p3, p2, :cond_0

    .line 1820
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1825
    :cond_0
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMore(I)V

    .line 1827
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/AnimatorAdapter;->animateView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    .line 1806
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AutoMap is not active, this method cannot be called. You should implement the AutoMap properly."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1766
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getViewTypeInstance(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1767
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    if-eqz v2, :cond_1

    .line 1772
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 1773
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1775
    :cond_0
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->getLayoutRes()I

    move-result v2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Leu/davidea/flexibleadapter/items/IFlexible;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 1769
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 1770
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "ViewType instance not found for viewType %s. You should implement the AutoMap properly."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeadersHelper(Z)V

    .line 408
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 409
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Detached Adapter from RecyclerView"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onItemMove(II)Z
    .locals 1

    .line 4938
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->swapItems(Ljava/util/List;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemSwiped(II)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onLoadMore(I)V
    .locals 8

    .line 2074
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 2079
    :cond_0
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    .line 2080
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    sub-int/2addr v0, v2

    goto :goto_2

    .line 2081
    :cond_2
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 2082
    :goto_2
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v2

    if-eq p1, v2, :cond_6

    if-lt p1, v0, :cond_6

    :cond_4
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v2, :cond_5

    if-lez p1, :cond_5

    if-le p1, v0, :cond_5

    goto :goto_3

    .line 2086
    :cond_5
    iget-object v3, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    .line 2087
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v4, v7, v1

    const/4 v2, 0x2

    aput-object p1, v7, v2

    const/4 p1, 0x3

    aput-object v5, v7, p1

    const/4 p1, 0x4

    aput-object v6, v7, p1

    const/4 p1, 0x5

    aput-object v0, v7, p1

    .line 2086
    const-string p1, "onLoadMore     topEndless=%s, loading=%s, position=%s, itemCount=%s threshold=%s, currentThreshold=%s"

    invoke-virtual {v3, p1, v7}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2090
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    .line 2093
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$8;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$8;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public onLoadMoreComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 2117
    invoke-virtual {p0, p1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMoreComplete(Ljava/util/List;J)V

    return-void
.end method

.method public onLoadMoreComplete(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2140
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 2142
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2143
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v2

    add-int/2addr v2, v1

    .line 2144
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v3

    .line 2146
    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    if-lez v4, :cond_1

    if-lt v1, v4, :cond_2

    :cond_1
    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    if-lez v4, :cond_3

    if-lt v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 2149
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    const/4 v4, 0x1

    if-lez v2, :cond_5

    if-eqz v1, :cond_4

    .line 2153
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2154
    :cond_4
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "onLoadMore     enqueued removing progressItem (%sms)"

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2155
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v2, v5, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    if-ltz v2, :cond_6

    .line 2157
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideProgressItem()V

    :cond_6
    :goto_1
    if-lez v1, :cond_8

    .line 2161
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getEndlessCurrentPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v0

    aput-object v2, v5, v4

    const-string p3, "onLoadMore     performing adding %s new items on page=%s"

    invoke-virtual {p2, p3, v5}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2162
    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2163
    :cond_7
    invoke-virtual {p0, v3, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    :cond_8
    if-eqz v1, :cond_a

    .line 2166
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    return-void

    .line 2167
    :cond_a
    :goto_2
    invoke-direct {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->noMoreLoad(I)V

    return-void
.end method

.method protected onPostFilter()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPostUpdate()V
    .locals 0

    .line 0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 5225
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5227
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideAllHeaders()V

    goto :goto_0

    .line 5228
    :cond_0
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v2, :cond_1

    .line 5229
    invoke-direct {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    .line 5231
    :cond_1
    :goto_0
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 5232
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5233
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 5236
    :cond_2
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5237
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5239
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    .line 5242
    :cond_3
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 5243
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    .line 5244
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 5246
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 5199
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5201
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    .line 5203
    :cond_0
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5205
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5206
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5207
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5209
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5211
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5212
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1833
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1835
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1837
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->onViewAttached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1844
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1846
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1848
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->onViewDetached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1855
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1856
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1861
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1863
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->unbindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public final removeAllScrollableFooters()V
    .locals 3

    .line 1045
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1046
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Remove all scrollable footers"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1048
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 1049
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final removeAllScrollableHeaders()V
    .locals 4

    .line 1029
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1030
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Remove all scrollable headers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1032
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 1033
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public removeAllSelectedItems()V
    .locals 1

    const/4 v0, 0x0

    .line 3654
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllSelectedItems(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAllSelectedItems(Ljava/lang/Object;)V
    .locals 1

    .line 3674
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 3391
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(ILjava/lang/Object;)V

    return-void
.end method

.method public removeItem(ILjava/lang/Object;)V
    .locals 3

    .line 3411
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    .line 3412
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeItem delegates removal to removeRange"

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3413
    invoke-virtual {p0, p1, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public removeItemWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "JZ)V"
        }
    .end annotation

    .line 3344
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$10;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$10;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3428
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3449
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "removeItems selectedPositions=%s payload=%s"

    invoke-virtual {v0, v4, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 3451
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3454
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 3456
    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$11;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$11;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3462
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "removeItems after reverse sort selectedPositions=%s"

    invoke-virtual {v0, v4, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3466
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3467
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    move v4, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sub-int v6, v0, v1

    .line 3469
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 3471
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 3475
    invoke-virtual {p0, v4, v1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    .line 3477
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    move v1, v3

    .line 3481
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    goto :goto_0

    .line 3483
    :cond_4
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    if-lez v1, :cond_5

    .line 3486
    invoke-virtual {p0, v4, v1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public varargs removeItemsOfType([Ljava/lang/Integer;)V
    .locals 4

    .line 3505
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3507
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3508
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v1, :cond_1

    .line 3510
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3511
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3514
    :cond_1
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 335
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "No listener class to remove!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 338
    :cond_0
    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 339
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-ne p1, v2, :cond_2

    .line 340
    :cond_1
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    .line 341
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const-string v6, "Removed %s as OnItemClickListener"

    invoke-virtual {v2, v6, v5}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 343
    invoke-virtual {v5}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 346
    :cond_2
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-nez v2, :cond_3

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-ne p1, v2, :cond_4

    .line 347
    :cond_3
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    .line 348
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const-string v6, "Removed %s as OnItemLongClickListener"

    invoke-virtual {v2, v6, v5}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 350
    invoke-virtual {v5}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 353
    :cond_4
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-ne p1, v2, :cond_5

    .line 355
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v5, "Removed %s as OnItemMoveListener"

    invoke-virtual {v2, v5, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_5
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-ne p1, v2, :cond_6

    .line 359
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v5, "Removed %s as OnItemSwipeListener"

    invoke-virtual {v2, v5, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :cond_6
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    if-ne p1, v2, :cond_7

    .line 363
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v5, "Removed %s as OnDeleteCompleteListener"

    invoke-virtual {v2, v5, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_7
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    if-ne p1, v2, :cond_8

    .line 367
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v5, "Removed %s as OnStickyHeaderChangeListener"

    invoke-virtual {v2, v5, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_8
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-ne p1, v2, :cond_9

    .line 371
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v5, "Removed %s as OnUpdateListener"

    invoke-virtual {v2, v5, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_9
    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    if-ne p1, v2, :cond_a

    .line 375
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Removed %s as OnFilterListener"

    invoke-virtual {p1, v0, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method public removeRange(II)V
    .locals 1

    .line 3532
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public removeRange(IILjava/lang/Object;)V
    .locals 8

    .line 3568
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    .line 3569
    iget-object v1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "removeRange positionStart=%s itemCount=%s"

    invoke-virtual {v1, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_b

    add-int v1, p1, p2

    if-le v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_a

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    move v3, p1

    move-object v4, v0

    move-object v5, v4

    :goto_0
    if-ge v3, v1, :cond_7

    .line 3581
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 3586
    :cond_2
    iget-boolean v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-nez v6, :cond_3

    .line 3589
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    .line 3593
    invoke-direct {p0, p1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->createRestoreItemInfo(ILeu/davidea/flexibleadapter/items/IFlexible;)V

    move-object v5, v0

    .line 3599
    :cond_3
    invoke-interface {v4, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 3601
    iget-boolean v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3602
    invoke-static {v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 3604
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v6

    .line 3605
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 3606
    throw v0

    .line 3613
    :cond_5
    :goto_1
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3614
    iget-boolean v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 3615
    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3617
    :cond_6
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/SelectableAdapter;->removeSelection(I)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3621
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 3624
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    if-ltz p1, :cond_8

    .line 3626
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 3629
    :cond_8
    invoke-virtual {p0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p2

    if-ltz p2, :cond_9

    if-eq p2, p1, :cond_9

    .line 3631
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_9
    return-void

    .line 3574
    :cond_a
    :goto_3
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "removeRange Nothing to delete!"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3571
    :cond_b
    :goto_4
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "Cannot removeRange with positionStart OutOfBounds!"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final removeScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")V"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Remove scrollable footer %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    invoke-direct {p0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    :cond_0
    return-void
.end method

.method public final removeScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "J)V"
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Enqueued removing scrollable footer (%sms) %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$4;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$4;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final removeScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")V"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Remove scrollable header %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    invoke-direct {p0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    :cond_0
    return-void
.end method

.method public final removeScrollableHeaderWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "J)V"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Enqueued removing scrollable header (%sms) %s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$3;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$3;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeSection(Leu/davidea/flexibleadapter/items/IHeader;)V
    .locals 6

    .line 3370
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItemPositions(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v0

    .line 3371
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    .line 3372
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v3, v4, p1

    const-string p1, "removeSection %s with all subItems at position=%s"

    invoke-virtual {v2, p1, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3374
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public restoreDeletedItems()V
    .locals 13

    const/4 v0, 0x1

    .line 3745
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3746
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    .line 3748
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3749
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 3752
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 3753
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    .line 3754
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3756
    iget v4, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    if-ltz v4, :cond_1

    .line 3758
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v6, "Restore SubItem %s"

    invoke-virtual {v4, v6, v5}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3759
    invoke-virtual {v3, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->getRestorePosition(Z)I

    move-result v8

    iget v9, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    iget-object v10, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    const/4 v11, 0x0

    sget-object v12, Leu/davidea/flexibleadapter/Payload;->UNDO:Leu/davidea/flexibleadapter/Payload;

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v7, p0

    .line 3763
    iget-object v4, v7, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v6, "Restore Item %s"

    invoke-virtual {v4, v6, v5}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3764
    invoke-virtual {v3, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->getRestorePosition(Z)I

    move-result v4

    iget-object v5, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v4, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    .line 3767
    :goto_1
    iget-object v4, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v4, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 3769
    iget-boolean v2, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    if-eqz v2, :cond_2

    iget-object v2, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3770
    iget-object v2, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 3771
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v3

    .line 3772
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 3773
    sget-object v4, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, v2, v2, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move-object v7, p0

    .line 3778
    iget-boolean v1, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    if-eqz v1, :cond_7

    iget-object v1, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3779
    iget-object v1, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    iget-object v1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    iget-object v1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    .line 3780
    :cond_4
    iput-boolean v0, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 3784
    iget-object v1, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3785
    iget-object v4, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3786
    iget-object v3, v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/SelectableAdapter;->addSelection(I)Z

    goto :goto_3

    .line 3789
    :cond_6
    iget-object v1, v7, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v3, "Selected positions after restore %s"

    invoke-virtual {v1, v3, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3792
    :cond_7
    iput-boolean v2, v7, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3797
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->emptyBin()V

    return-void
.end method

.method public saveUndoPositions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3862
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs selectAll([Ljava/lang/Integer;)V
    .locals 2

    .line 522
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object p1, v1, v0

    invoke-super {p0, v1}, Leu/davidea/flexibleadapter/SelectableAdapter;->selectAll([Ljava/lang/Integer;)V

    return-void

    .line 525
    :cond_0
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->selectAll([Ljava/lang/Integer;)V

    return-void
.end method

.method public setAnimateChangesWithDiffUtil(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4355
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    return-object p0
.end method

.method public setAnimateToLimit(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4325
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set animateToLimit=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4326
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    return-object p0
.end method

.method public setAutoCollapseOnExpand(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2237
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set autoCollapseOnExpand=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2238
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    return-object p0
.end method

.method public setAutoScrollOnExpand(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2287
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set setAutoScrollOnExpand=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2288
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    return-object p0
.end method

.method public setDiffUtilCallback(Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4367
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    return-object p0
.end method

.method public setDisplayHeadersAtStartUp(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1480
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1481
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V

    :cond_0
    return-object p0
.end method

.method public setEndlessPageSize(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1944
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set endlessPageSize=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1945
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    return-object p0
.end method

.method public setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2015
    :goto_0
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    if-eqz p1, :cond_1

    .line 2017
    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessScrollThreshold(I)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 2018
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2019
    iget-object v2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Set progressItem=%s"

    invoke-virtual {v2, p1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Enabled EndlessScrolling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 2022
    :cond_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Disabled EndlessScrolling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setEndlessScrollListener(Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2041
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Set endlessScrollListener=%s"

    invoke-virtual {v0, p1, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2043
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setEndlessScrollThreshold(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2056
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2057
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getSpanCount()I

    move-result v0

    mul-int/2addr p1, v0

    .line 2060
    :cond_0
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    .line 2061
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Set endlessScrollThreshold=%s"

    invoke-virtual {v0, p1, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setEndlessTargetCount(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set endlessTargetCount=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1976
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    return-object p0
.end method

.method public setFilter(Ljava/io/Serializable;)V
    .locals 1

    .line 3969
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3970
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3972
    :cond_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    return-void
.end method

.method public final setHandleDragEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4713
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4714
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set handleDragEnabled=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4715
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setHandleDragEnabled(Z)V

    return-object p0
.end method

.method public setHeadersShown(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1496
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return-object p0
.end method

.method public final setItemTouchHelperCallback(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4648
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    const/4 p1, 0x0

    .line 4649
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 4650
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4651
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized custom ItemTouchHelperCallback"

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLoadingMoreAtStartUp(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1989
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set loadingAtStartup=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1991
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$7;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p0
.end method

.method public final setLongPressDragEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4682
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4683
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set longPressDragEnabled=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4684
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLongPressDragEnabled(Z)V

    return-object p0
.end method

.method public setMinCollapsibleLevel(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2344
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set minCollapsibleLevel=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2345
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    return-object p0
.end method

.method public final setNotifyChangeOfUnfilteredItems(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4000
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set notifyChangeOfUnfilteredItems=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4001
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    return-object p0
.end method

.method public final setNotifyMoveOfFilteredItems(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4020
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set notifyMoveOfFilteredItems=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4021
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    return-object p0
.end method

.method public setPermanentDelete(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 3703
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set permanentDelete=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3704
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return-object p0
.end method

.method public setRecursiveCollapse(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 2263
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set setAutoCollapseSubLevels=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2264
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    return-object p0
.end method

.method public setRestoreSelectionOnUndo(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set restoreSelectionOnUndo=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3732
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    return-object p0
.end method

.method public setStickyHeaderElevation(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1461
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyElevation:I

    return-object p0
.end method

.method public setStickyHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(ZLandroid/view/ViewGroup;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setStickyHeaders(ZLandroid/view/ViewGroup;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/ViewGroup;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, " with user defined Sticky Container"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Set stickyHeaders=%s (in Post!)%s"

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    .line 1405
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeadersEnabled:Z

    .line 1407
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeadersHelper(Z)V

    return-object p0
.end method

.method public final setSwipeEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 4746
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set swipeEnabled=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4747
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4748
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setSwipeEnabled(Z)V

    return-object p0
.end method

.method public setTopEndless(Z)V
    .locals 0

    .line 1887
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    return-void
.end method

.method public setUnlinkAllItemsOnRemoveHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Set unlinkOnRemoveHeader=%s"

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    return-object p0
.end method

.method public shouldMove(II)Z
    .locals 0

    .line 4925
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 4926
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showAllHeaders()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leu/davidea/flexibleadapter/FlexibleAdapter;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1512
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V

    return-object p0
.end method

.method public smoothScrollToPosition(I)V
    .locals 4

    .line 5092
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5094
    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$12;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$12;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public swapItems(Ljava/util/List;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;II)V"
        }
    .end annotation

    if-ltz p2, :cond_5

    .line 4817
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    if-ltz p3, :cond_5

    .line 4818
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_2

    .line 4821
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    .line 4822
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/SelectableAdapter;->isSelected(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v3, 0x3

    aput-object v4, v5, v3

    .line 4821
    const-string v3, "swapItems from=%s [selected? %s] to=%s [selected? %s]"

    invoke-virtual {v0, v3, v5}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge p2, p3, :cond_1

    .line 4825
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4826
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    .line 4830
    :cond_1
    const-string v0, "swapItems from=%s to=%s"

    if-ge p2, p3, :cond_2

    move v3, p2

    :goto_0
    if-ge v3, p3, :cond_3

    .line 4832
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v8, v9, v1

    invoke-virtual {v4, v0, v9}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4833
    invoke-static {p1, v3, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 4834
    invoke-virtual {p0, v3, v7}, Leu/davidea/flexibleadapter/SelectableAdapter;->swapSelection(II)V

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, p2

    :goto_1
    if-le v3, p3, :cond_3

    .line 4838
    iget-object v4, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v7, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v8, v9, v1

    invoke-virtual {v4, v0, v9}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4839
    invoke-static {p1, v3, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 4840
    invoke-virtual {p0, v3, v7}, Leu/davidea/flexibleadapter/SelectableAdapter;->swapSelection(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4843
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 4846
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p1, :cond_5

    .line 4848
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4849
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    if-ge p2, p3, :cond_4

    move p2, p3

    .line 4891
    :cond_4
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 4892
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    :cond_5
    :goto_2
    return-void
.end method

.method public toggleSelection(I)V
    .locals 2

    .line 479
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    .line 484
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 490
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/SelectableAdapter;->toggleSelection(I)V

    .line 499
    :cond_0
    invoke-super {p0}, Leu/davidea/flexibleadapter/SelectableAdapter;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 500
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    :cond_1
    return-void
.end method

.method public updateDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;Z)V

    return-void
.end method

.method public updateDataSet(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 607
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 610
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 614
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 615
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->prepareItemsForUpdate(Ljava/util/List;)V

    .line 616
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 618
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "updateDataSet with notifyDataSetChanged!"

    invoke-virtual {p1, v0, p2}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 620
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostUpdate()V

    return-void
.end method

.method public updateItem(ILeu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2901
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "updateItem No Item to update!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2904
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 2909
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2910
    iget-object p2, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItem notifyItemChanged on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2911
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 2906
    :cond_2
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "Cannot updateItem on position out of OutOfBounds!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateItem(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2866
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateItem(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V

    return-void
.end method

.method public updateItem(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2882
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateItem(ILeu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V

    return-void
.end method
