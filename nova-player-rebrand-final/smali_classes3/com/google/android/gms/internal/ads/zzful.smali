.class public final Lcom/google/android/gms/internal/ads/zzful;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfuu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzful;->zzb:Lcom/google/android/gms/internal/ads/zzfuu;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfux;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfux;-><init>(Lcom/google/android/gms/internal/ads/zzful;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzful;->zzb:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuu;->zza(Lcom/google/android/gms/internal/ads/zzfut;)V

    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuw;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfuw;-><init>(Lcom/google/android/gms/internal/ads/zzful;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzful;->zzb:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuu;->zza(Lcom/google/android/gms/internal/ads/zzfut;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>(Lcom/google/android/gms/internal/ads/zzful;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzful;->zzb:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuu;->zza(Lcom/google/android/gms/internal/ads/zzfut;)V

    return-void
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzful;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zze(Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzful;->zza:Lorg/json/JSONObject;

    return-void
.end method
