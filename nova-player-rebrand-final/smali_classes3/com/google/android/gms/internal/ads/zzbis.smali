.class public abstract Lcom/google/android/gms/internal/ads/zzbis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:sequential_cache_delay_to_load_seconds"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbis;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
