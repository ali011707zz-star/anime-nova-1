.class public final Lcom/google/android/gms/internal/ads/zzeml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeki;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzdvp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzekj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzdvp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvp;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfki;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzelv;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdcp;Ljava/lang/String;)V

    return-object v1
.end method
