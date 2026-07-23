.class public final Lcom/player/easy/ui/finished/FinishedAdapter;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "FinishedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/player/easy/ui/finished/FinishedAdapter;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "Lcom/player/easy/ui/finished/FinishedItem;",
        "fragment",
        "Lcom/player/easy/ui/finished/FinishedFragment;",
        "<init>",
        "(Lcom/player/easy/ui/finished/FinishedFragment;)V",
        "delegate",
        "Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;",
        "getDelegate",
        "()Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;",
        "FinishedItemListener",
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


# instance fields
.field private final delegate:Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;


# direct methods
.method public constructor <init>(Lcom/player/easy/ui/finished/FinishedFragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    .line 10
    iput-object p1, p0, Lcom/player/easy/ui/finished/FinishedAdapter;->delegate:Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;

    return-void
.end method


# virtual methods
.method public final getDelegate()Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/player/easy/ui/finished/FinishedAdapter;->delegate:Lcom/player/easy/ui/finished/FinishedAdapter$FinishedItemListener;

    return-object v0
.end method
