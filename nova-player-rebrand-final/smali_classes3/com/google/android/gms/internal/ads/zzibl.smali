.class public abstract Lcom/google/android/gms/internal/ads/zzibl;
.super Lcom/google/android/gms/internal/ads/zzhzv;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzibr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzibr;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzibr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzibl;->zzb:Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zza()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zza()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zzb:Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbg()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidu;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbk()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzaK([BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhzv;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzibl;->zzbp([BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibl;

    return-object p0
.end method

.method protected final zzbg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbh()V

    :cond_0
    return-void
.end method

.method protected zzbh()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zza()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    return-void
.end method

.method public final zzbi()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzibr;->zzcd(Lcom/google/android/gms/internal/ads/zzibr;Z)Z

    move-result v0

    return v0
.end method

.method public zzbk()Lcom/google/android/gms/internal/ads/zzibl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbs()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbf()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbl()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0
.end method

.method public zzbl()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzaX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0
.end method

.method public final zzbm()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbl()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbi()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzv;->zzaR(Lcom/google/android/gms/internal/ads/zzidc;)Lcom/google/android/gms/internal/ads/zziee;

    move-result-object v0

    throw v0
.end method

.method public zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbs()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public zzbp([BIILcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibl;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    add-int v6, p2, p3

    new-instance v7, Lcom/google/android/gms/internal/ads/zziab;

    .line 4
    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/ads/zziab;-><init>(Lcom/google/android/gms/internal/ads/zzibb;)V

    move-object v4, p1

    move v5, p2

    .line 5
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzidu;->zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zziab;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 6
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1

    .line 9
    :goto_1
    throw p1
.end method

.method public zzbs()Lcom/google/android/gms/internal/ads/zzibr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zzb:Lcom/google/android/gms/internal/ads/zzibr;

    return-object v0
.end method

.method public bridge synthetic zzbt()Lcom/google/android/gms/internal/ads/zzidc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbl()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    return-object v0
.end method
