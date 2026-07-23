.class public final Lcom/facebook/ads/redexgen/X/ny;
.super Lcom/facebook/ads/redexgen/X/4y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/nx;->A63(Lcom/facebook/ads/redexgen/X/CG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4y<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/nx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101887
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ny;->A00:Lcom/facebook/ads/redexgen/X/nx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4y;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ny;->A00:Lcom/facebook/ads/redexgen/X/nx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nx;->A00(Lcom/facebook/ads/redexgen/X/nx;)Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A05()V

    .line 101889
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A01()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101890
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ny;->A00()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1

    .line 101891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ny;->A00:Lcom/facebook/ads/redexgen/X/nx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nx;->A00(Lcom/facebook/ads/redexgen/X/nx;)Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06()V

    .line 101892
    return-void
.end method
