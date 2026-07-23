.class public abstract Lcom/google/android/gms/internal/ads/zzbjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:mediation_serving_domain:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html"

    const/4 v2, 0x4

    const-string v3, "gads:sdk_core_location"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjo;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
