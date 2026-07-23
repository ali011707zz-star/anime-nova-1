.class public interface abstract Lcom/facebook/ads/redexgen/X/A6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A5;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/A6;

.field public static final A01:Lcom/facebook/ads/redexgen/X/A6;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 603
    new-instance v0, Lcom/facebook/ads/redexgen/X/oH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/A6;

    .line 604
    sget-object v0, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/A6;

    sput-object v0, Lcom/facebook/ads/redexgen/X/A6;->A01:Lcom/facebook/ads/redexgen/X/A6;

    return-void
.end method


# virtual methods
.method public abstract A3C(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/9s;
.end method

.method public abstract A7W(Lcom/facebook/ads/redexgen/X/qI;)I
.end method

.method public abstract AH3(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/A5;
.end method

.method public abstract AH4()V
.end method

.method public abstract AJe(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/8O;)V
.end method
