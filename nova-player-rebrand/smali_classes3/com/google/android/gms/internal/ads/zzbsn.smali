.class public final Lcom/google/android/gms/internal/ads/zzbsn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbre;
.implements Lcom/google/android/gms/internal/ads/zzbsm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbsm;

.field private final zzb:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zzb:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrp;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzc(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzd(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zze(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzf()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzboh;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unregistering eventhandler: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    .line 3
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzboh;

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzbsm;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsm;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zzb:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsm;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zzb:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
