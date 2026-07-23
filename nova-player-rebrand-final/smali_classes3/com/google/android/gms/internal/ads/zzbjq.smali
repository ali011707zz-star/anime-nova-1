.class public abstract Lcom/google/android/gms/internal/ads/zzbjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    const-string v1, ""

    const/4 v2, 0x4

    const-string v3, "gads:pan:experiment_id"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjq;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
