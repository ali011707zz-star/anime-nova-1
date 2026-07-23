.class public final Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;,
        Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

.field private final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    .line 2
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const-string v0, "JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s, replyToMessageId=%s]"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zza:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zze:Ljava/lang/String;

    return-object v0
.end method
