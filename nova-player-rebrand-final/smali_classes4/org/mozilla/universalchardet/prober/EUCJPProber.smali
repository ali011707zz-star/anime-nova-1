.class public Lorg/mozilla/universalchardet/prober/EUCJPProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "EUCJPProber.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 70
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/EUCJPProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 71
    new-instance v0, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 72
    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    .line 74
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_JP:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->getConfidence()F

    move-result v0

    .line 87
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->getConfidence()F

    move-result v1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, p3, :cond_4

    .line 105
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 107
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 111
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_1
    if-nez v3, :cond_3

    .line 115
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v3

    if-ne v0, p2, :cond_2

    .line 118
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    aget-byte v5, p1, p2

    aput-byte v5, v4, v2

    .line 119
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v2, v4, v1, v3}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->handleOneChar([BII)V

    .line 120
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    invoke-virtual {v2, v4, v1, v3}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->handleOneChar([BII)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p1, v2, v3}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->handleOneChar([BII)V

    .line 123
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-virtual {v1, p1, v2, v3}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->handleOneChar([BII)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    sub-int/2addr p3, v2

    aget-byte p1, p1, p3

    aput-byte p1, p2, v1

    .line 130
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_5

    .line 131
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->gotEnoughData()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->getConfidence()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 132
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 136
    :cond_5
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 143
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 144
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->reset()V

    .line 145
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->reset()V

    .line 146
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
