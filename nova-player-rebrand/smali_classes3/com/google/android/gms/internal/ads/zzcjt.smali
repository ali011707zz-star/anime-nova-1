.class final synthetic Lcom/google/android/gms/internal/ads/zzcjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjt;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzcjw;->$r8$clinit:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zza()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjt;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhj;->zze(Ljava/lang/String;)V

    return-void
.end method
