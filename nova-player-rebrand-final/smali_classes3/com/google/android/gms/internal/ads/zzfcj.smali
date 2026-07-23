.class final synthetic Lcom/google/android/gms/internal/ads/zzfcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfck;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcl;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfcl;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
