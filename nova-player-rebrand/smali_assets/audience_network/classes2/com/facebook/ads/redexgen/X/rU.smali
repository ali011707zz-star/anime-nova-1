.class public abstract Lcom/facebook/ads/redexgen/X/rU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/rT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniqueKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/rV;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/instagram/common/viewpoint/core/SharedViewpointManager$UniqueKey;",
        "",
        "uniqueString",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "toString",
        "Companion",
        "fbandroid.java.com.instagram.common.viewpoint.core.core_an"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/rV;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/rV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/rV;-><init>(Lcom/facebook/ads/redexgen/X/qZ;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/rU;->A00:Lcom/facebook/ads/redexgen/X/rV;

    .line 3602
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/rU;->A01:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
