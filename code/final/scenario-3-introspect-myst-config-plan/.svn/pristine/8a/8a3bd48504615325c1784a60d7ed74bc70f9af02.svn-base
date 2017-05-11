package poc.rubiconred.fusioncloud.ci.util.core;

import java.util.List;

import org.jgrapht.DirectedGraph;
import org.jgrapht.alg.CycleDetector;
import org.jgrapht.alg.DijkstraShortestPath;
import org.jgrapht.graph.DefaultDirectedGraph;
import org.jgrapht.graph.DefaultEdge;
import org.jgrapht.graph.DirectedSubgraph;

/**
 * This class demonstrates some of the operations that can be performed on directed graphs. After constructing a basic directed graph, it computes all the strongly connected
 * components of this graph. It then finds the shortest path from one vertex to another using Dijkstra's shortest path algorithm. The sample code should help to clarify to users of
 * JGraphT that the class org.jgrapht.alg.shortestpath.DijkstraShortestPath can be used to find shortest paths within directed graphs.
 *
 * @author Minh Van Nguyen
 * @since 2008-01-17
 */
public class DirectedGraphDemo {
  public static void main(String args[]) {
    // constructs a directed graph with the specified vertices and edges
    DirectedGraph<String, DefaultEdge> directedGraph = new DefaultDirectedGraph<String, DefaultEdge>(DefaultEdge.class);
    directedGraph.addVertex("a");
    directedGraph.addVertex("b");
    directedGraph.addVertex("c");
    directedGraph.addVertex("d");
    directedGraph.addEdge("a", "b");
    directedGraph.addEdge("b", "c");
    directedGraph.addEdge("c", "d");
    directedGraph.addEdge("d", "a");
    directedGraph.addEdge("d", "b");
    
 

    CycleDetector<String, DefaultEdge> c = new CycleDetector<>(directedGraph);

    if (c.detectCycles()) {
      System.out.println("cycle is there ");
    }

    // // computes all the strongly connected components of the directed graph
    // StrongConnectivityAlgorithm<String, DefaultEdge> scAlg =
    // new KosarajuStrongConnectivityInspector<>(directedGraph);
    // List<DirectedSubgraph<String, DefaultEdge>> stronglyConnectedSubgraphs =
    // scAlg.stronglyConnectedSubgraphs();
    //
    // // prints the strongly connected components
    // System.out.println("Strongly connected components:");
    // for (int i = 0; i < stronglyConnectedSubgraphs.size(); i++) {
    // System.out.println(stronglyConnectedSubgraphs.get(i));
    // }
    // System.out.println();
    //
    // // Prints the shortest path from vertex i to vertex c. This certainly
    // // exists for our particular directed graph.
    // System.out.println("Shortest path from i to c:");
    // DijkstraShortestPath<String, DefaultEdge> dijkstraAlg =
    // new DijkstraShortestPath<>(directedGraph);
    // SingleSourcePaths<String, DefaultEdge> iPaths = dijkstraAlg.getPaths("i");
    // System.out.println(iPaths.getPath("c") + "\n");
    //
    // // Prints the shortest path from vertex c to vertex i. This path does
    // // NOT exist for our particular directed graph. Hence the path is
    // // empty and the variable "path"; must be null.
    // System.out.println("Shortest path from c to i:");
    // SingleSourcePaths<String, DefaultEdge> cPaths = dijkstraAlg.getPaths("c");
    // System.out.println(cPaths.getPath("i"));
  }
}