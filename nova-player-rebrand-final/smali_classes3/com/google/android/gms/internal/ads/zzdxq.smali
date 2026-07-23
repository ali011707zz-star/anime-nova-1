.class public final Lcom/google/android/gms/internal/ads/zzdxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdxq;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zza:Lcom/google/android/gms/internal/ads/zzdxq;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfno;->zza:Lcom/google/android/gms/internal/ads/zzfno;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfno;->zzd:Lcom/google/android/gms/internal/ads/zzfno;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfno;Lcom/google/android/gms/internal/ads/zzfno;)V

    return-object v0
.end method
