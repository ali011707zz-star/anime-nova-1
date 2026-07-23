.class public abstract Lcom/google/android/gms/internal/ads/zzbjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gads:signals_collection_on_service:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjr;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
