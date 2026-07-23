.class public final Lcom/google/android/gms/internal/ads/zzbip;
.super Lcom/google/android/gms/internal/ads/zzbio;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbip;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbip;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p1
.end method
