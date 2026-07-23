.class final synthetic Lcom/google/android/gms/ads/internal/client/zzes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzex;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzex;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzes;->zza:Lcom/google/android/gms/ads/internal/client/zzex;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzes;->zza:Lcom/google/android/gms/ads/internal/client/zzex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzu(Ljava/lang/String;)V

    return-void
.end method
