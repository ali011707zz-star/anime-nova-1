.class Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver$1;
.super Ljava/lang/Object;
.source "AnimatorAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;)V
    .locals 0

    .line 442
    iput-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver$1;->this$1:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 444
    iget-object p1, p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver$1;->this$1:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;->access$102(Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorAdapterDataObserver;Z)Z

    const/4 p1, 0x1

    return p1
.end method
