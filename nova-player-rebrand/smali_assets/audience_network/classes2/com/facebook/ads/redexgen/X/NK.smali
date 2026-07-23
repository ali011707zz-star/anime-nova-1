.class public final Lcom/facebook/ads/redexgen/X/NK;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/jh;

.field public A01:Lcom/facebook/ads/redexgen/X/NJ;

.field public A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1435
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dggRIwntGnoxWZ7BDQUg45Sl6NQgoMuN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "38c9H60yn2P1pt17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "STlEyQPStERy8tSXGvH8F24LWNUxdBhq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hCwe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bKRxwQpiW0PmVHVfGUn2RavmyNEFkRji"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPPe2MO9HED0sxCZzVAB8cvkabJHsXeP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uH31h0PRXTyVkIOgrCb5PcgaQIfZ1AyX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pPlbIWWtmQkYN3MHTwcOdVUNUzBLXTby"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/redexgen/X/NJ;)V
    .locals 0

    .line 53204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53205
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    .line 53206
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    .line 53207
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53208
    return-void
.end method


# virtual methods
.method public final A00()Landroid/content/IntentFilter;
    .locals 3

    .line 53209
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 53210
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A06:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53211
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53212
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53213
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A09:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53214
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53215
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53216
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A04:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53217
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53218
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53219
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0A:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53220
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53221
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53222
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A05:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53223
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53224
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53225
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0C:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53226
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53227
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53228
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0B:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53229
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53230
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53231
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A03:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53232
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53233
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53234
    return-object v2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 53235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 53236
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A06:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53237
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53238
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFo(Lcom/facebook/ads/redexgen/X/jh;)V

    .line 53240
    :cond_0
    :goto_0
    return-void

    .line 53241
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A09:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53242
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53243
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53244
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53245
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 53246
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 53247
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A04:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53248
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53249
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFl(Lcom/facebook/ads/redexgen/X/jh;)V

    goto :goto_0

    .line 53251
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0A:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53252
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53253
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFn(Lcom/facebook/ads/redexgen/X/jh;)V

    goto :goto_0

    .line 53255
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A05:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53256
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53257
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const-string v1, "gVjZHTAPXXqW3paCpGTUxeCgOEd4dSxo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 53258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NJ;->onRewardedVideoClosed()V

    goto/16 :goto_0

    .line 53259
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0B:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53260
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53261
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53262
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const-string v1, "QgP7tKiwXm5h6JnagwUE7gN68w8IQRlz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/NJ;->AFj(Lcom/facebook/ads/redexgen/X/jh;)V

    goto/16 :goto_0

    .line 53263
    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/ez;->A0C:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    .line 53264
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53265
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53266
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A00:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFk(Lcom/facebook/ads/redexgen/X/jh;)V

    goto/16 :goto_0

    .line 53267
    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/ez;->A03:Lcom/facebook/ads/redexgen/X/ez;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NK;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_b

    .line 53268
    sget-object v2, Lcom/facebook/ads/redexgen/X/NK;->A03:[Ljava/lang/String;

    const-string v1, "4VvB4uonEo2HdG2J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53269
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53270
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NK;->A01:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NJ;->onRewardedVideoActivityDestroyed()V

    goto/16 :goto_0

    .line 53271
    :cond_b
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/ez;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53272
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method
