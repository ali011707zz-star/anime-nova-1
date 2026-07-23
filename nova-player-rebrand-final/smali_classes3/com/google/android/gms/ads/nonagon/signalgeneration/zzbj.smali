.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:Lcom/google/android/gms/internal/ads/zzbzu;

.field public zze:Landroid/os/Bundle;

.field public zzf:Landroid/os/Bundle;

.field private zzg:J

.field private zzh:J


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzf:Landroid/os/Bundle;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzh:J

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzbzu;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v1, ""

    move-object v2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 13
    :sswitch_0
    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_2

    :sswitch_1
    const-string v4, "signal_dictionary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :sswitch_2
    const-string v4, "params"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v7, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzh:J

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzg:J

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 8
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    iput-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzf:Landroid/os/Bundle;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    if-eqz p1, :cond_a

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxh;->zzj:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzg:J

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdxh;->zzk:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzh:J

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5dc44b76 -> :sswitch_3
        -0x3b55067a -> :sswitch_2
        -0x102de173 -> :sswitch_1
        0x66d9d3b1 -> :sswitch_0
    .end sparse-switch
.end method
