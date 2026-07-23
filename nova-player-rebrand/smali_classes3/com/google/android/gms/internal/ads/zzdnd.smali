.class public final Lcom/google/android/gms/internal/ads/zzdnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtk;

.field private final zzc:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcce;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zza:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzc:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzd:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzc:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzcce;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzd:Lcom/google/android/gms/internal/ads/zzcce;

    return-object v0
.end method

.method public final zzc()Lorg/json/JSONObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdtk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    return-object v0
.end method
