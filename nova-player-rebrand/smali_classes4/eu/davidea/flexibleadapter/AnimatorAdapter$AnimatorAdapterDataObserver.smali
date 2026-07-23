.class Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "AnimatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/AnimatorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorAdapterDataObserver"
.end annotation


# instance fields
.field private mAnimatorHandler:Landroid/os/Handler;

.field private notified:Z

.field final synthetic this$0:Leu/davidea/flexibleadapter/AnimatorAdapter;


# direct methods
.method private constructor <init>(Leu/davidea/flexibleadapter/AnimatorAdapter;)V
    .locals 2

    .line 440
    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->this$0:Leu/davidea/flexibleadapter/AnimatorAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 442
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver$1;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver$1;-><init>(Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->mAnimatorHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Leu/davidea/flexibleadapter/AnimatorAdapter;Leu/davidea/flexibleadapter/AnimatorAdapter$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;-><init>(Leu/davidea/flexibleadapter/AnimatorAdapter;)V

    return-void
.end method

.method static synthetic access$102(Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;Z)Z
    .locals 0

    .line 440
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->notified:Z

    return p1
.end method

.method private markNotified()V
    .locals 1

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->notified:Z

    return-void
.end method


# virtual methods
.method public clearNotified()V
    .locals 4

    .line 454
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->notified:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->mAnimatorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->mAnimatorHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public isPositionNotified()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->notified:Z

    return v0
.end method

.method public onChanged()V
    .locals 0

    .line 466
    invoke-direct {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->markNotified()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 471
    invoke-direct {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->markNotified()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 476
    invoke-direct {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->markNotified()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 486
    invoke-direct {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->markNotified()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 481
    invoke-direct {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->markNotified()V

    return-void
.end method
