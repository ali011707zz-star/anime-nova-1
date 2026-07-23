.class final synthetic Lcom/google/android/gms/internal/ads/zzgci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/net/HttpURLConnection;


# direct methods
.method synthetic constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgci;->zza:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgci;->zza:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
