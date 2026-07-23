.class public final Lcom/google/android/gms/internal/ads/zzdxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnv;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgd;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzbgd;

    return-void
.end method


# virtual methods
.method public final zzdK(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdL(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzbgd;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxa;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdxa;->zza:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzc(I)V

    :cond_0
    return-void
.end method

.method public final zzdM(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzbgd;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxa;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdxa;->zzc:I

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzc(I)V

    :cond_0
    return-void
.end method

.method public final zzdN(Lcom/google/android/gms/internal/ads/zzfno;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzbgd;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxa;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdxa;->zzb:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzc(I)V

    :cond_0
    return-void
.end method
