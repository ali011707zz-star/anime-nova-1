.class public Lcom/google/firebase/remoteconfig/CustomSignals$Builder;
.super Ljava/lang/Object;
.source "CustomSignals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/CustomSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->customSignals:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/remoteconfig/CustomSignals$Builder;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->customSignals:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/firebase/remoteconfig/CustomSignals;
    .locals 1

    .line 79
    new-instance v0, Lcom/google/firebase/remoteconfig/CustomSignals;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/CustomSignals;-><init>(Lcom/google/firebase/remoteconfig/CustomSignals$Builder;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Lcom/google/firebase/remoteconfig/CustomSignals$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->customSignals:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/google/firebase/remoteconfig/CustomSignals$Builder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->customSignals:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/CustomSignals$Builder;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->customSignals:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
