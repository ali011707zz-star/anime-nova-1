.class public final Lcom/facebook/ads/redexgen/X/Nw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ya;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NO;->A07()Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1463
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dAENZa04S5kpLZ1505OVGzU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BCWAX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x4EBtM5L1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d5mzvX7vdf5oGTbdkf23a85QS6J33UuP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "T3xMk8xyeuXfnP2cHDF22zgmf4sSWk7a"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "D6RnJQb1nSkQk7teZoJG77p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lMrZ8D5HcAsH09zpnUIM78ubrFXrhoz6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r7D6OIPJDO7XxyVdFUwVLtQI1zZlrgYr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACl(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 5

    .line 55167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0b(Lcom/facebook/ads/redexgen/X/NO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0E(Lcom/facebook/ads/redexgen/X/NO;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0A(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/bi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bi;->A07(Landroid/view/ViewGroup;)V

    .line 55169
    :goto_0
    return-void

    .line 55170
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const-string v1, "011C"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/NO;->A0c(Lcom/facebook/ads/redexgen/X/NO;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0E(Lcom/facebook/ads/redexgen/X/NO;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0h(Lcom/facebook/ads/redexgen/X/NO;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NO;->A0g:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 55172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A0S(Lcom/facebook/ads/redexgen/X/NO;)V

    goto :goto_0

    .line 55173
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A04(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 55174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A01(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A02(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AEO()V

    .line 55176
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A02(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 55177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A06(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nw;->A00:Lcom/facebook/ads/redexgen/X/NO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NO;->A08(Lcom/facebook/ads/redexgen/X/NO;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const-string v1, "iNY9OvP3hEWy4eydF9NsffnrPtCfLtIx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "zl19Behk0RYI4HrdG27XeFY6Dxp3Bz2i"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
