.class public abstract Lcom/google/android/gms/internal/ads/zzgct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field protected final zza:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Ljava/io/File;

    return-object v0
.end method

.method public abstract zzb()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method
