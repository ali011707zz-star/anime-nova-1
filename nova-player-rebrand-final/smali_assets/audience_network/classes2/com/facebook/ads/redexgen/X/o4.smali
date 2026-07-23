.class public final Lcom/facebook/ads/redexgen/X/o4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field public final A00:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 101996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101997
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:Landroid/database/Cursor;

    .line 101998
    return-void
.end method

.method public synthetic constructor <init>(Landroid/database/Cursor;Lcom/facebook/ads/redexgen/X/Bg;)V
    .locals 0

    .line 101999
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/o4;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Bk;
    .locals 1

    .line 102000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9w;->A03(Landroid/database/Cursor;)Lcom/facebook/ads/redexgen/X/Bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A01()Z
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Bn;->A00(Lcom/facebook/ads/redexgen/X/Bo;)Z

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .line 102001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102002
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .line 102003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 1

    .line 102004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/o4;->A00:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
