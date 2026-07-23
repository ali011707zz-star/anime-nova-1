.class final Lcom/google/android/gms/internal/ads/zzhxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhxd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhxm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhxm;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxb;->zza:Lcom/google/android/gms/internal/ads/zzhxm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxb;->zza:Lcom/google/android/gms/internal/ads/zzhxm;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhxm;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
