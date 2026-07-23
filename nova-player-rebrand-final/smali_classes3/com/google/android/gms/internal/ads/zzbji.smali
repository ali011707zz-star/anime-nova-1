.class public abstract Lcom/google/android/gms/internal/ads/zzbji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:parallel_rendering:max_renderers"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbji;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
